#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_video.h>
#include <functional>
#include "snake.h"

void SnakeMotion::SetDirection(SDL_Keycode keyCode) {
	switch (keyCode) {
	    case SDLK_UP:
		direction = {0,1};
		break;
	    case SDLK_DOWN:
		direction = {0,-1};
		break;
	    case SDLK_LEFT:
		direction = {-1,0};
		break;
	    case SDLK_RIGHT:
		direction = {1,0};
		break;
	}
}


    // Initial position of the square

void SnakeMotion::Update() {
	pos[0] += squareSize*direction[0];
	pos[1] += squareSize*direction[1];

        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);  // Black background
        SDL_RenderClear(ren);

        SDL_Rect rect = { pos[0], pos[1], squareSize, squareSize };
        SDL_SetRenderDrawColor(ren, 0, 255, 0, 255);  // Green square
        SDL_RenderFillRect(ren, &rect);

        SDL_RenderPresent(ren);
}

SnakeMotion::SnakeMotion(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren) : win(win) , ren(ren) {
	eventPoller->SubscribeToKeyDown([this](SDL_Keycode keyCode) { SetDirection(keyCode);});
	direction = {0,0};
	pos = {128, 128};
	squareSize = 5;
}

