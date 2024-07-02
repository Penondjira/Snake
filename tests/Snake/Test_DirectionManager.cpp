#include "DirectionManager.h"
#include "IKeyDownChannel.h"
#include <SDL_keycode.h>
#include <gtest/gtest.h>
#include <SDL2/SDL.h>

class MockKeyDownChannel : public IKeyDownChannel{
	public:
		void SubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback);
		void MockKeyPress(SDL_Keycode key);
	private:
		std::vector<std::function<void(SDL_Keycode)>> keycodeSubscriberCallbacks;
};

void MockKeyDownChannel::SubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback){
	keycodeSubscriberCallbacks.push_back(callback);
}

void MockKeyDownChannel::MockKeyPress(SDL_Keycode key) {
	for (std::function<void(SDL_Keycode key)>& handler : keycodeSubscriberCallbacks) {
		handler(key);
	}
}

TEST(TestDirectionManager, SetsDirection) {
	MockKeyDownChannel mockKeyDownChannel;
	DirectionManager directionManager(&mockKeyDownChannel);

	mockKeyDownChannel.MockKeyPress(SDLK_UP);
	std::vector<int> actualDirection = directionManager.GetDirection();
	std::vector<int> expectedDirection = {0, -1};
	EXPECT_EQ(actualDirection, expectedDirection);
}

TEST(TestDirectionManager, SetsAllowedDirectionsWithNoQueues) {
	MockKeyDownChannel mockKeyDownChannel;
	DirectionManager directionManager(&mockKeyDownChannel);

	mockKeyDownChannel.MockKeyPress(SDLK_UP);
	std::vector<int> actualDirection = directionManager.GetDirection();
	std::vector<int> expectedDirection = {0, -1};
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	mockKeyDownChannel.MockKeyPress(SDLK_RIGHT);
	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	mockKeyDownChannel.MockKeyPress(SDLK_LEFT); //Can't reverse
	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};
	EXPECT_EQ(actualDirection, expectedDirection);
}

TEST(TestDirectionManager, SetsAllowedDirectionsWithQueues) {
	MockKeyDownChannel mockKeyDownChannel;
	DirectionManager directionManager(&mockKeyDownChannel);

	mockKeyDownChannel.MockKeyPress(SDLK_UP);
	std::vector<int> actualDirection = directionManager.GetDirection();
	std::vector<int> expectedDirection = {0, -1};
	EXPECT_EQ(actualDirection, expectedDirection);


	mockKeyDownChannel.MockKeyPress(SDLK_RIGHT);
	actualDirection = directionManager.GetDirection();
	expectedDirection = {0, -1}; //hasn't processed queue yet
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection(); 

	mockKeyDownChannel.MockKeyPress(SDLK_LEFT);
	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};  //Can't reverse
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};  //no new inputs
	EXPECT_EQ(actualDirection, expectedDirection);
}

TEST(TestDirectionManager, IgnoresQueuesBeyondFirst) {
	MockKeyDownChannel mockKeyDownChannel;
	DirectionManager directionManager(&mockKeyDownChannel);

	mockKeyDownChannel.MockKeyPress(SDLK_UP);
	std::vector<int> actualDirection = directionManager.GetDirection();
	std::vector<int> expectedDirection = {0, -1};
	EXPECT_EQ(actualDirection, expectedDirection);


	mockKeyDownChannel.MockKeyPress(SDLK_RIGHT);
	actualDirection = directionManager.GetDirection();
	expectedDirection = {0, -1}; //hasn't processed queue yet
	EXPECT_EQ(actualDirection, expectedDirection);

	mockKeyDownChannel.MockKeyPress(SDLK_UP);
	actualDirection = directionManager.GetDirection();
	expectedDirection = {0, -1}; //ignored
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection(); 

	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0}; //second up was ignored, no new inputs
	EXPECT_EQ(actualDirection, expectedDirection);

	directionManager.ProcessQueuedDirection();

	actualDirection = directionManager.GetDirection();
	expectedDirection = {1, 0};  //no new inputs
	EXPECT_EQ(actualDirection, expectedDirection);
}
