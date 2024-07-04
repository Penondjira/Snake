#ifndef DELETEMEPNGEXPER_H
#define DELETEMEPNGEXPER_H

#include <SDL_render.h>
#include <SDL_video.h>

class DeleteMePngExper {
	public:
		DeleteMePngExper(SDL_Window* const win, SDL_Renderer* const ren);
		SDL_Texture* PrepImage(const char* path);
	private:
		SDL_Window* const win;
		SDL_Renderer* const ren;
};

#endif
