#include <SDL2/SDL.h>
#include "Apple.h"
#include "AppleEatEvent.h"
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_video.h>
#include <random>
#include <cstdlib>
#include <iostream>


Apple::Apple(AppleEatEvent* const &event, const SnakeMotion* &snake, SDL_Window* win, SDL_Renderer* ren, const int squareLength) : event(event), snake(snake), win(win) , ren(ren), squareLength(squareLength) {
	applePos = {0, 0};
}

int getRandomInt(const int &min, const int &max) {
	std::random_device rd;
	std::mt19937 gen(rd());
	std::uniform_int_distribution<> distr(min, max);
	return distr(gen);
}

void Apple::SpawnApple() {
	int winWidth, winHeight;
	SDL_GetWindowSize(win, &winWidth, &winHeight);
	const int minWidth = squareLength;
	const int minHeight = squareLength;
	applePos[0] = getRandomInt(minWidth, winWidth - squareLength);
	applePos[1] = getRandomInt(minHeight, winHeight - squareLength);

	isSpawned = true;
}

bool Apple::IsEaten() {
	bool isTouchingHorizontally = abs(snake->GetPosition()[0] - applePos[0]) < squareLength;
	bool isTouchingVertically = abs(snake->GetPosition()[1] - applePos[1]) < squareLength;
	return isTouchingHorizontally && isTouchingVertically;
}

void Apple::Update(){
        SDL_Rect rect = { applePos[0], applePos[1], squareLength, squareLength };
        SDL_SetRenderDrawColor(ren, 255, 0, 0, 255);  
        SDL_RenderFillRect(ren, &rect);

	//std::cout << abs(snake.GetPosition()[0] - applePos[0]) << std::endl;
	//std::cout << abs(snake.GetPosition()[1] - applePos[1]) << std::endl;
	//
	if (IsEaten()){
		event->Notify();
		SpawnApple();
	}
}
