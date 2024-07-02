#ifndef APPLE_CREATOR_H
#define APPLE_CREATOR_H

#include <SDL2/SDL.h>
#include "INotifyable.h"
#include "PositionManager.h"
#include <vector>
#include "AppleGO.h"
#include "Pos.h"

class AppleCreator {
	public:
		AppleCreator(const int winWidth, const int winHeight, const int squareLength, INotifyable* const appleEatChannel, SDL_Renderer* ren, const std::vector<Pos>* const snakePos);
		AppleGO* CreateApple();

	private:
		const int winWidth;
		const int winHeight;
		const int squareLength;
		const INotifyable* appleEatChannel;
		SDL_Renderer* ren;
		const std::vector<Pos>* const snakePos;
};
#endif
