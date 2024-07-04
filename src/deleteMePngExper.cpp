#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL_render.h>
#include "deleteMePngExper.h"
#include <SDL_surface.h>
#include <SDL_video.h>
#include <iostream>
#include <ostream>

DeleteMePngExper::DeleteMePngExper(SDL_Window* const win, SDL_Renderer* const ren)
	: win(win), ren(ren) {

	int imgFlags = IMG_INIT_PNG;
	if (!(IMG_Init(imgFlags) & imgFlags)) {
		std::cout << "SDL_image could not initialize! IMG_Error: " << IMG_GetError() << std::endl;
		SDL_DestroyRenderer(ren);
		SDL_DestroyWindow(win);
		SDL_Quit();
	}
}

SDL_Texture* DeleteMePngExper::PrepImage(const char* path) {
	SDL_Surface* loadedSurface = IMG_Load(path);
	if (!loadedSurface) {
		std::cout << "Unable to load image! IMG_Error: " << IMG_GetError() << std::endl;
		IMG_Quit();
		SDL_DestroyRenderer(ren);
		SDL_DestroyWindow(win);
		SDL_Quit();
	}

	SDL_Texture* texture = SDL_CreateTextureFromSurface(ren, loadedSurface);
	SDL_FreeSurface(loadedSurface);
	if (!texture) {
		std::cout << "Unable to create texture! SDL_Error: " << SDL_GetError() << std::endl;
		IMG_Quit();
		SDL_DestroyRenderer(ren);
		SDL_DestroyWindow(win);
		SDL_Quit();
	}
	return texture;
}
