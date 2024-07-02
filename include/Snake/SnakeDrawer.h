#ifndef SNAKEDRAWER_H
#define SNAKEDRAWER_H

#include <vector>
#include "Pos.h"
#include <SDL2/SDL.h>

class SnakeDrawer {
	public:
		SnakeDrawer(const std::vector<Pos>* const snakePos, const int squareLength, SDL_Renderer* const ren);
		void Draw() const;
	private:
		const std::vector<Pos>* const snakePos;
		const int squareLength;
		SDL_Renderer* const ren;
};

#endif
