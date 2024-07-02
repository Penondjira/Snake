#ifndef SNAKEMOTION_H
#define SNAKEMOTION_H

#include <SDL2/SDL.h>
#include "EventPoller.h"
#include <vector>
#include "AppleEatEvent.h"

class SnakeMotion {
public:
	SnakeMotion(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren, int squareLength, AppleEatChannel* const &appleEatEvent);
	std::vector<int> GetPosition() const;
	void Update();

private:
	void SetDirection(SDL_Keycode keyCode);
	void HandleAppleEaten();
	std::vector<int> direction;
	std::vector<int> pos;
	SDL_Window* win;
	SDL_Renderer* ren;
	int squareLength;
	AppleEatChannel* const appleEatEvent;

};

#endif
