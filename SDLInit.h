#ifndef SDLINIT_H
#define SDLINIT_H

#include <SDL2/SDL.h>

class SDLInit {
public: 
	std::tuple<SDL_Window*, SDL_Renderer*> Initialize();
};
#endif
