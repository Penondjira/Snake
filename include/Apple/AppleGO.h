#ifndef APPLEGO_H
#define APPLEGO_H

#include <SDL2/SDL.h>
#include "INotifyable.h"
#include "PositionManager.h"
#include "IDrawer.h"
#include "ISnakeDetector.h"
#include "IMover.h"

class AppleGO {
	public:
		AppleGO(const ISnakeDetector* snakeDetector, const IMover* mover, const IDrawer* drawer, const INotifyable* channel);
		void Update();
		PositionManager* GetPositionManager();
		~AppleGO();
	private:
		const ISnakeDetector* snakeDetector;
		const IMover* mover;
		const IDrawer* drawer;
		const INotifyable* channel;
};
#endif
