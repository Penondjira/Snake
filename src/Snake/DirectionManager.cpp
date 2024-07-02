#include "DirectionManager.h"
#include "IKeyDownChannel.h"
#include <SDL2/SDL.h>
#include <vector>
#include <iostream>

DirectionManager::DirectionManager(IKeyDownChannel* eventPoller) {
	eventPoller->SubscribeToKeyDown([this](SDL_Keycode keyCode) { SetDirection(keyCode);});
	direction = {0, 0};
	directionSetThisTurn = false;
}

void DirectionManager::SetDirection(SDL_Keycode keyCode) {
	/*std::cout << "SetDirection called" << std::endl;
	std::cout << "pre processed direction: " << std::endl;
	if (direction == std::vector<int>{0, -1}) {
		std::cout << "Up" << std::endl;
	} else if (direction == std::vector<int>{0, 1}) {
		std::cout << "Down" << std::endl;
	} else if (direction == std::vector<int>{-1, 0}) {
		std::cout << "Left" << std::endl;
	} else if (direction == std::vector<int>{1, 0}) {
		std::cout << "Right" << std::endl;
	} else {
		std::cout << "Unknown direction" << std::endl;
	}	
	std::cout << "direction set this turn: " << directionSetThisTurn << std::endl;
	switch (keyCode) {
		case SDLK_UP:
			std::cout << "Up" << std::endl;
			break;
		case SDLK_DOWN:
			std::cout << "Down" << std::endl;
			break;
		case SDLK_LEFT:
			std::cout << "Left" << std::endl;
			break;
		case SDLK_RIGHT:
			std::cout << "Right" << std::endl;
			break;
	}*/

	if (!directionSetThisTurn) {
		bool isMovingHorizontally = direction[1] == 0;
		bool isMovingVertically = direction[0] == 0;

		switch (keyCode) {
			case SDLK_UP:
				if (isMovingHorizontally){
					direction = {0,-1};
					directionSetThisTurn = true;
				}
				break;
			case SDLK_DOWN:
				if (isMovingHorizontally){
					direction = {0,1};
					directionSetThisTurn = true;
				}	
				break;
			case SDLK_LEFT:
				if (isMovingVertically){
					direction = {-1,0};
					directionSetThisTurn = true;
				}
				break;
			case SDLK_RIGHT:
				if (isMovingVertically){
					//std::cout << "in right" << std::endl;
					direction = {1,0};
					directionSetThisTurn = true;
				}
				break;
			}
	}
	
	//need to buffer some inputs or feels bad man
	else {
		bool isGonnaMoveHorizontally = direction[1] == 0;
		bool isGonnaMoveVertically = direction[0] == 0;

		switch (keyCode) {
			case SDLK_UP:
				if (isGonnaMoveHorizontally){
					queuedDirection = {0,-1};
				}
				break;
			case SDLK_DOWN:
				if (isGonnaMoveHorizontally){
					queuedDirection = {0,1};
				}	
				break;
			case SDLK_LEFT:
				if (isGonnaMoveVertically){
					queuedDirection = {-1,0};
				}
				break;
			case SDLK_RIGHT:
				if (isGonnaMoveVertically){
					queuedDirection = {1,0};
				}
				break;
			}
	}
	//std::cout << "SetDirection finishing with directionSetThisTurn: " << directionSetThisTurn << std::endl;
}

std::vector<int> DirectionManager::GetDirection() {
	return direction;
}

void DirectionManager::ProcessQueuedDirection() {
	//std::cout << "ProcessQueuedDirection called" << std::endl;
	if (!queuedDirection.empty()) {
		direction = queuedDirection;
		queuedDirection.clear();
	}
	else {
		directionSetThisTurn = false;
	}
	//std::cout << "ProcessQueuedDirection finishing with directionSetThisTurn: " << directionSetThisTurn << std::endl;
}
