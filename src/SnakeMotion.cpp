#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_video.h>
#include <functional>
#include "../include/SnakeMotion.h"
#include <iostream>
#include "../include/AppleEatEvent.h"

void SnakeMotion::SetDirection(SDL_Keycode keyCode) {
	bool isMovingHorizontally = direction[1] == 0;
	bool isMovingVertically = direction[0] == 0;
	switch (keyCode) {
	    case SDLK_UP:
		if (isMovingHorizontally){
		    direction = {0,-1};
		}
		break;
	    case SDLK_DOWN:
		if (isMovingHorizontally){
		    direction = {0,1};
		}	
		break;
	    case SDLK_LEFT:
		if (isMovingVertically){
		    direction = {-1,0};
		}
		break;
	    case SDLK_RIGHT:
		if (isMovingVertically){
		    direction = {1,0};
		}
		break;
	}
}

void SnakeMotion::HandleAppleEaten(){
    std::cout << "snake growing" << std::endl;
}

std::vector<int> SnakeMotion::GetPosition() const {
    return pos;
}

void SnakeMotion::Update() {
//    std::cout << this << std::endl;

	pos[0] += squareLength*direction[0];
	pos[1] += squareLength*direction[1];

        SDL_Rect rect = { pos[0], pos[1], squareLength, squareLength };
        SDL_SetRenderDrawColor(ren, 0, 255, 0, 255);  // Green square
        SDL_RenderFillRect(ren, &rect);
}

SnakeMotion::SnakeMotion(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren, int squareLength, AppleEatEvent* const &appleEatEvent) : win(win) , ren(ren), squareLength(squareLength), appleEatEvent(appleEatEvent) {
	eventPoller->SubscribeToKeyDown([this](SDL_Keycode keyCode) { SetDirection(keyCode);});
	appleEatEvent->Subscribe([this]() { HandleAppleEaten();});
	direction = {0,0};
	pos = {128, 128};
}
