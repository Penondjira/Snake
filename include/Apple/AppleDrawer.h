#ifndef APPLE_DRAWER_H
#define APPLE_DRAWER_H

#include "PositionManager.h"
#include <SDL2/SDL.h>

class AppleDrawer {
	public:
		AppleDrawer(const PositionManager* applePos, const int squareLength, SDL_Renderer* ren);
		void Draw() const;
	private:
		const PositionManager* applePos;
		const int squareLength;
		SDL_Renderer* ren;
};
#endif
