#ifndef SDLINIT_H
#define SDLINIT_H

#include <SDL2/SDL.h>
#include <tuple>

class SDLInit {
public: 
	std::tuple<SDL_Window*, SDL_Renderer*> Initialize();
};
#endif
