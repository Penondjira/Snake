#include <gtest/gtest.h>
#include "PositionManager.h"
#include "SnakeDetector.h"

TEST(TouchingTest, DetectsEaten) {
	std::vector<Pos> snakePos = {{128,128}, {128 - 16, 128}, {128 - 2*16, 128}};
	PositionManager applePos;
	const int squareLength = 10;

	SnakeDetector snakeDetector = SnakeDetector(&snakePos, &applePos, squareLength);
	
	Pos tempPos;
	tempPos.x = 100;
	tempPos.y = 200;

	snakePos[0] = tempPos;
	applePos.SetPosition(tempPos);

	bool actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, true);

	tempPos.x = 105;
	tempPos.y = 200;

	snakePos[0] = tempPos;
	
	actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, true);

	tempPos.x = 115;
	tempPos.y = 200;

	snakePos[0] = tempPos;
	
	actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, false);
}
