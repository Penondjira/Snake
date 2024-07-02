#ifndef SNAKEMOTION_H
#define SNAKEMOTION_H

#include <SDL2/SDL.h>
#include "Pos.h"
#include <vector>
#include "AppleEatEvent.h"
#include "TailRemover.h"
#include "HeadUpdater.h"
#include "SnakeDrawer.h"

class SnakeMotion {
public:
	SnakeMotion(HeadUpdater* const headUpdater, const SnakeDrawer* const snakeDrawer, AppleEatChannel* const &appleEatEvent, std::vector<Pos>* const pos, TailRemover* const tailRemover);
	std::vector<Pos>* GetPositions() const;
	void Update();

private:
	void HandleAppleEaten();
	HeadUpdater* const headUpdater;
	std::vector<Pos>* pos;
	AppleEatChannel* const appleEatEvent;
	TailRemover* const tailRemover;
	const SnakeDrawer* const snakeDrawer;

};

#endif
