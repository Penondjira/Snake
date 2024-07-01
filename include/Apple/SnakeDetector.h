#include <PositionManager.h>

class SnakeDetector {
	public:
		SnakeDetector(const PositionManager* snakePos, const PositionManager* applePos, const int &squareLength);
		bool IsEaten() const;
	private:
		const PositionManager* snakePos;
		const PositionManager* applePos;
		int squareLength;
};
