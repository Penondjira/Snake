#include "AppleGO.h"
#include "MockNotifyable.h"
#include "IDrawer.h"
#include "IMover.h"
#include "ISnakeDetector.h"
#include <gtest/gtest.h>

class MockDetector : public ISnakeDetector {
	public:
		MockDetector(bool isTrue);
		bool IsEaten() const;
	private:
		bool isTrue;
};

MockDetector::MockDetector(bool isTrue) : isTrue(isTrue) {
}	

bool MockDetector::IsEaten() const {
	return isTrue;
}

class MockMover : public IMover {
	public:
		MockMover();
		void MoveApple() const;
		void ResetCalled();
		bool WasCalled() const;
	private:
		mutable bool called;
};

MockMover::MockMover() {
	called = false;
}

void MockMover::MoveApple() const {
	called = true;
}

bool MockMover::WasCalled() const {
	return called;
}	

void MockMover::ResetCalled() {
	called = false;
}	

class MockDrawer : public IDrawer {
	public:
		MockDrawer();
		void Draw() const;
		bool WasCalled() const;
	private:
		mutable bool called;
};

MockDrawer::MockDrawer() {
	called = false;
}

void MockDrawer::Draw() const {
	called = true;

}

bool MockDrawer::WasCalled() const {
	return called;
}	

TEST(AppleGoTest, UpdatesIfNotEaten) {
	MockDetector* mockDetector = new MockDetector(false);
	MockMover* mockMover = new MockMover();
	MockDrawer* mockDrawer =  new MockDrawer();
	MockNotifyable mockNotifyable;

	AppleGO appleGo = AppleGO(mockDetector, mockMover, mockDrawer, &mockNotifyable);

	mockMover->ResetCalled();
	appleGo.Update();
	EXPECT_FALSE(mockMover->WasCalled());
	EXPECT_TRUE(mockDrawer->WasCalled());
	EXPECT_FALSE(mockNotifyable.WasCalled());
	
};

TEST(AppleGoTest, UpdatesIfEaten) {
	MockDetector* mockDetector = new MockDetector(true);
	MockMover* mockMover = new MockMover();
	MockDrawer* mockDrawer =  new MockDrawer();
	MockNotifyable mockNotifyable;

	AppleGO appleGo = AppleGO(mockDetector, mockMover, mockDrawer, &mockNotifyable);

	mockMover->ResetCalled();
	appleGo.Update();
	EXPECT_TRUE(mockMover->WasCalled());
	EXPECT_TRUE(mockDrawer->WasCalled());
	EXPECT_TRUE(mockNotifyable.WasCalled());
	
};
