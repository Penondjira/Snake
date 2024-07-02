#ifndef APPLE_H
#define APPLE_H

#include <SDL2/SDL.h>
#include <vector>
#include "SnakeMotion.h"
#include "AppleEatEvent.h"

class Apple {
public:	
	Apple(AppleEatChannel* const &event, const SnakeMotion* &snake, SDL_Window* win, SDL_Renderer* ren, const int squareLength);
	void SpawnApple();
	void Update();

private:
	bool IsEaten();
	AppleEatChannel* const event;
	const SnakeMotion* snake;
	std::vector<int> applePos;
	bool isSpawned;
	SDL_Window* win;
	SDL_Renderer* ren;
	const int squareLength;
};
#endif
