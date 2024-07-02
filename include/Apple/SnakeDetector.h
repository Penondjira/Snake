#include "ISnakeDetector.h"
#include <PositionManager.h>
#include <vector>

class SnakeDetector : public ISnakeDetector{
	public:
		SnakeDetector(const std::vector<Pos>* const snakePos, const PositionManager* applePos, const int &squareLength);
		bool IsEaten() const;
	private:
		const std::vector<Pos>* const snakePos;
		const PositionManager* applePos;
		int squareLength;
};
