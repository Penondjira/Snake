#include <gtest/gtest.h>
#include "HeadUpdater.h"
#include "IDirectionManager.h"
#include <SDL2/SDL.h>
#include <vector>

class MockDirectionManager : public IDirectionManager{
	public:
		std::vector<int> GetDirection();
		void ProcessQueuedDirection();
		void SetDirection(std::vector<int> direction);
	private:
		std::vector<int> direction;
};

std::vector<int> MockDirectionManager::GetDirection() {
	return direction;
}

void MockDirectionManager::ProcessQueuedDirection() {
}

void MockDirectionManager::SetDirection(std::vector<int> direction){
	this->direction = direction;
}

TEST(TestHeadUpdater, UpdatesHead){
	int squareLength = 16;
	std::vector<Pos> pos = { {128,128}, {128, 128}, {128 - squareLength, 128} };
	MockDirectionManager mockDirectionManager;
	HeadUpdater headUpdater = HeadUpdater(&pos, &mockDirectionManager, squareLength);
	mockDirectionManager.SetDirection({1,0});
	headUpdater.UpdateHead();
	std::vector<Pos> actualPos = pos;
	std::vector<Pos> expectedPos = { {144,128}, {128, 128}, {112, 128} };
	EXPECT_EQ(actualPos, expectedPos);
}

