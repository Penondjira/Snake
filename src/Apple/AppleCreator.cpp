#include "AppleCreator.h"
#include "INotifyable.h"
#include "Rander.h"
#include "SnakeDetector.h"
#include "Mover.h"
#include "AppleDrawer.h"

AppleCreator::AppleCreator(const int winWidth, const int winHeight, const int squareLength, INotifyable* const appleEatChannel, SDL_Renderer* ren, PositionManager* const snakePos)
	: winWidth(winWidth), winHeight(winHeight), squareLength(squareLength), appleEatChannel(appleEatChannel), ren(ren), snakePos(snakePos) {

}	

AppleGO* AppleCreator::CreateApple() {
	PositionManager* const applePos = new PositionManager();
	Rander* rander = new Rander();
	SnakeDetector* snakeDetector = new SnakeDetector(snakePos, applePos, squareLength);
	Mover* mover = new Mover(winWidth, winHeight, squareLength, rander, applePos);
	AppleDrawer* drawer = new AppleDrawer(applePos, squareLength, ren);
	AppleGO* appleGO = new AppleGO(snakeDetector, mover, drawer, appleEatChannel);
	return appleGO;
}
