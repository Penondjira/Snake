#include "SnakeDetector.h"
#include <cstdlib>

SnakeDetector::SnakeDetector(const PositionManager* snakePos, const PositionManager* applePos, const int &squareLength) 
	: snakePos(snakePos), applePos(applePos), squareLength(squareLength) {
}

bool SnakeDetector::IsEaten() const {
	bool isTouchingHorizontally = abs(snakePos->GetPosition().x - applePos->GetPosition().x) < squareLength;
	bool isTouchingVertically = abs(snakePos->GetPosition().y - applePos->GetPosition().y) < squareLength;
	return isTouchingHorizontally && isTouchingVertically;
}
