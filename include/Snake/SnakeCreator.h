#ifndef SNAKECREATOR_H
#define SNAKECREATOR_H

#include "SnakeGO.h"
#include "EventPoller.h"

class SnakeCreator {
	public:
		SnakeCreator(const int &squareLength, EventPoller* const eventPoller, AppleEatChannel* const appleEatChannel, SDL_Renderer* const ren);
		SnakeGO* CreateSnake();

	private:
		const int squareLength;
		EventPoller* const eventPoller;
		AppleEatChannel* const appleEatChannel;
		SDL_Renderer* const ren;
};

#endif
