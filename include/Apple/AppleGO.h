#ifndef APPLEGO_H
#define APPLEGO_H

#include <SDL2/SDL.h>
#include "PositionManager.h"
#include "AppleDrawer.h"
#include "SnakeDetector.h"
#include "Mover.h"
#include "AppleEatEvent.h"

class AppleGO {
	public:
		AppleGO(const SnakeDetector* snakeDetector, const Mover* mover, const AppleDrawer* drawer, const AppleEatEvent* channel);
		void Update();
		PositionManager* GetPositionManager();
		~AppleGO();
	private:
		const SnakeDetector* snakeDetector;
		const Mover* mover;
		const AppleDrawer* drawer;
		const AppleEatEvent* channel;
};
#endif
