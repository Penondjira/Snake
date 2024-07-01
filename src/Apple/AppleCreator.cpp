#include "AppleCreator.h"

AppleCreator::AppleCreator(const int winWidth, const int winHeight, const int squareLength, AppleEatEvent* const channel, SDL_Renderer* ren, PositionManager* const snakePos)
	: winWidth(winWidth), winHeight(winHeight), squareLength(squareLength), channel(channel), ren(ren), snakePos(snakePos) {

}	

AppleGO* AppleCreator::CreateApple() {
	PositionManager* const applePos = new PositionManager();
	Rander* rander = new Rander();
	SnakeDetector* snakeDetector = new SnakeDetector(snakePos, applePos, squareLength);
	Mover* mover = new Mover(winWidth, winHeight, squareLength, rander, applePos);
	AppleDrawer* drawer = new AppleDrawer(applePos, squareLength, ren);
	AppleGO* appleGO = new AppleGO(snakeDetector, mover, drawer, channel);
	return appleGO;
}
