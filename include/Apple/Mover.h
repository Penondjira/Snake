#ifndef MOVER_H
#define MOVER_H

#include "Rander.h"
#include "PositionManager.h"

class Mover {
	public:
		Mover(const int &winWidth, const int &winHeight, const int &squareSize, Rander* &rander, PositionManager* applePos);
		void MoveApple() const;
		~Mover();
	private:
		int winWidth;
		int winHeight;
		int squareSize;
		Rander* rander;
		PositionManager* applePos;
};
#endif
