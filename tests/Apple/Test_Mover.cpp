#include "Mover.h"
#include "PositionManager.h"
#include <gtest/gtest.h>

TEST(MoverTest, Moves) {
	Rander* rander = new Rander();
	PositionManager* applePos = new PositionManager();
	Pos tempPos;
	int startx = 100;
	int starty = 200;
	tempPos.x = startx;
	tempPos.y = starty;

	applePos->SetPosition(tempPos);
	//std::cout << "x: " << applePos.GetPosition().x << "y: " << applePos.GetPosition().y << std::endl; 
	Mover mover = Mover(800, 600, 10, rander, applePos);
	mover.MoveApple();

	bool xChanged = applePos->GetPosition().x != startx;
	bool yChanged = applePos->GetPosition().y != starty;
	bool somethingChanged = xChanged || yChanged;
	EXPECT_EQ(somethingChanged, true);
}
