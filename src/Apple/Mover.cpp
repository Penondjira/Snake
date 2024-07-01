#include "Mover.h"

Mover::Mover(const int &winWidth, const int &winHeight, const int &squareSize, Rander* &rander, PositionManager* applePos)
	: winWidth(winWidth), winHeight(winHeight), squareSize(squareSize), rander(rander), applePos(applePos){
}

void Mover::MoveApple() const {
	int newX = rander->GetRandInt(0 + squareSize, winWidth - squareSize);
	int newY = rander->GetRandInt(0 + squareSize, winHeight - squareSize);
	Pos newPos;
	newPos.x = newX;
	newPos.y = newY;
	applePos->SetPosition(newPos);
}

Mover::~Mover() {
	delete rander;
	rander = nullptr;
	delete applePos;
	applePos = nullptr;
}
