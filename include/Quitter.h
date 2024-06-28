#ifndef QUITTER_H
#define QUITTER_H

#include <SDL2/SDL.h>
#include "EventPoller.h"

class Quitter {
public:
	Quitter(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren);

private:
	void HandleQuit();
	SDL_Window* win;
	SDL_Renderer* ren;
};


#endif
