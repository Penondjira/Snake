#include "SnakeDetector.h"
#include <cstdlib>

SnakeDetector::SnakeDetector(const std::vector<Pos>* const snakePos, const PositionManager* applePos, const int &squareLength) 
	: snakePos(snakePos), applePos(applePos), squareLength(squareLength) {
}

bool SnakeDetector::IsEaten() const {
	bool isTouchingHorizontally = abs((*snakePos)[0].x - applePos->GetPosition().x) < squareLength;
	bool isTouchingVertically = abs((*snakePos)[0].y - applePos->GetPosition().y) < squareLength;
	return isTouchingHorizontally && isTouchingVertically;
}
