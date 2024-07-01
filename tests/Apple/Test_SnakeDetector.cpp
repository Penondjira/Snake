#include <gtest/gtest.h>
#include "PositionManager.h"
#include "SnakeDetector.h"

TEST(TouchingTest, DetectsEaten) {
	PositionManager snakePos;
	PositionManager applePos;
	const int squareLength = 10;

	SnakeDetector snakeDetector = SnakeDetector(&snakePos, &applePos, squareLength);
	
	Pos tempPos;
	tempPos.x = 100;
	tempPos.y = 200;

	snakePos.SetPosition(tempPos);
	applePos.SetPosition(tempPos);

	bool actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, true);

	tempPos.x = 105;
	tempPos.y = 200;

	snakePos.SetPosition(tempPos);
	
	actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, true);

	tempPos.x = 115;
	tempPos.y = 200;

	snakePos.SetPosition(tempPos);
	
	actual = snakeDetector.IsEaten();
	EXPECT_EQ(actual, false);
}
