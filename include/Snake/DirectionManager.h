#ifndef DIRECTIONSETTER_H
#define DIRECTIONSETTER_H

#include "IDirectionManager.h"
#include "IKeyDownChannel.h"
#include <vector>

class DirectionManager : public IDirectionManager{
	public:
		DirectionManager(IKeyDownChannel* eventPoller);
		std::vector<int> GetDirection();
		void ProcessQueuedDirection();
	private:
		void SetDirection(SDL_Keycode keyCode);
		std::vector<int> direction;
		std::vector<int> queuedDirection;
		bool directionSetThisTurn;
};

#endif
