#include <random>
class Rander {
	public:
		Rander();
		int GetRandInt(const int &min, const int &max);
	private:
		std::mt19937 gen;
};

Rander::Rander(){
	std::random_device rd;
	gen = std::mt19937(rd());
}	

int Rander::GetRandInt(const int &min, const int &max) {
	std::uniform_int_distribution<> distr(min, max);
	return distr(gen);
}

struct Pos {
	public:
		int x;
		int y;
		bool operator==(const Pos& other) const {
			return x == other.x && y == other.y;
		}
};

class Position {
	public:
		const Pos& GetPosition() const;
		void SetPosition(const Pos &newPos);
		
	private:
		Pos pos;
};

const Pos& Position::GetPosition() const{
	return pos;
}

void Position::SetPosition(const Pos &newPos) {
	pos = newPos;
}

class SnakeDetector {
	public:
		SnakeDetector(Position* snakePos, Position* applePos);
		bool IsEaten();
	private:
		Position* snakePos;
		Position* applePos;
		int squareLength;
};

SnakeDetector::SnakeDetector(Position* snakePos, Position* applePos) 
	: snakePos(snakePos), applePos(applePos) {
}

bool SnakeDetector::IsEaten() {
	bool isTouchingHorizontally = abs(snakePos->GetPosition()->x - applePos->GetPosition()->x) < squareLength;
	bool isTouchingVertically = abs(snakePos->GetPosition()->y - applePos->GetPosition()->y) < squareLength;
	return isTouchingHorizontally && isTouchingVertically;
}

class Mover {
	public:
		Mover(const int &winWidth, const int &winHeight, const int &squareSize, const Rander &rander, Position* applePos);
		void MoveApple();
	private:
		int winWidth;
		int winHeight;
		int squareSize;
		Rander rander;
		Position* applePos;
};

Mover::Mover(const int &winWidth, const int &winHeight, const int &squareSize, const Rander &rander, Position* applePos)
	: winWidth(winWidth), winHeight(winHeight), squareSize(squareSize), rander(rander), applePos(applePos){
}

void Mover::MoveApple() {
	int newX = rander.GetRandInt(0 + squareSize, winWidth - squareSize);
	int newY = rander.GetRandInt(0 + squareSize, winHeight - squareSize);
	Pos newPos;
	newPos.x = newX;
	newPos.y = newY;
	applePos->SetPosition(newPos);
}

class AppleDrawer {
	public:
		
};
