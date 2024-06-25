#include <SDL2/SDL.h>
#include <SDL2/SDL_video.h>
#include <iostream>
#include <tuple>
#include "snake.h"

std::tuple<SDL_Window*, SDL_Renderer*> SDLInit::Initialize() {
    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
        return std::make_tuple(nullptr, nullptr);
    }

    SDL_Window *win = SDL_CreateWindow("Hello SDL", 100, 100, 640, 480, SDL_WINDOW_SHOWN | SDL_WINDOW_FULLSCREEN_DESKTOP);
    if (win == nullptr) {
        std::cout << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return std::make_tuple(nullptr, nullptr);
    }

    SDL_Renderer *ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (ren == nullptr) {
        SDL_DestroyWindow(win);
        std::cout << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return std::make_tuple(win, nullptr);
    }
	
    return std::make_tuple(win, ren);
}
