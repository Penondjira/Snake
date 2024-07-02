#include "SnakeCreator.h"
#include "AppleEatEvent.h"
#include "DirectionManager.h"
#include "EventPoller.h"
#include "HeadUpdater.h"
#include "SnakeDrawer.h"
#include "SnakeGO.h"
#include "TailRemover.h"
#include <SDL_render.h>
#include <vector>

SnakeCreator::SnakeCreator(const int &squareLength, EventPoller* const eventPoller, AppleEatChannel* const appleEatChannel, SDL_Renderer* const ren) 
	: squareLength(squareLength), eventPoller(eventPoller), appleEatChannel(appleEatChannel), ren(ren) {
}

SnakeGO* SnakeCreator::CreateSnake() {
	const int xInitial = 128;
	const int yInitial = 128;
	std::vector<Pos>* snakePos = new std::vector<Pos>(3);
	*snakePos = { 
		{xInitial, yInitial},
		{xInitial - squareLength, yInitial},
		{xInitial - 2 * squareLength, yInitial}
	};

	DirectionManager* directionManager = new DirectionManager(eventPoller);
	HeadUpdater* headUpdater = new HeadUpdater(snakePos, directionManager, squareLength);

	SnakeDrawer* snakeDrawer = new SnakeDrawer(snakePos, squareLength, ren);

	TailRemover* tailRemover = new TailRemover(snakePos);

	SnakeGO* snakeGO = new SnakeGO(headUpdater, snakeDrawer, appleEatChannel, snakePos, tailRemover);

	return snakeGO;
}
