#include <gtest/gtest.h>
#include "PositionManager.h"


TEST(PositionManagerTest, CreatesWithoutSegFault) {
	PositionManager posMan = PositionManager();
	EXPECT_EQ(true, true);
}

TEST(PositionManagerTest, SetsAndGetsPos) {
	PositionManager posMan;
	Pos tempPos;
	tempPos.x = 100;
	tempPos.y = 200;

	posMan.SetPosition(tempPos);
	Pos gottenPos = posMan.GetPosition();
	EXPECT_EQ(tempPos, gottenPos);
	EXPECT_EQ(tempPos.x, gottenPos.x);
	EXPECT_EQ(tempPos.y, gottenPos.y);
}
