#ifndef APPLE_CREATOR_H
#define APPLE_CREATOR_H

#include <SDL2/SDL.h>
#include "PositionManager.h"
#include "AppleEatEvent.h"
#include "AppleGO.h"

class AppleCreator {
	public:
		AppleCreator(const int winWidth, const int winHeight, const int squareLength, AppleEatEvent* const channel, SDL_Renderer* ren, PositionManager* const snakePos);
		AppleGO* CreateApple();
	private:
		const int winWidth;
		const int winHeight;
		const int squareLength;
		const AppleEatEvent* channel;
		SDL_Renderer* ren;
		PositionManager* const snakePos;
};
#endif
