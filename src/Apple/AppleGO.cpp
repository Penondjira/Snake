#include "AppleGO.h"

AppleGO::AppleGO(const SnakeDetector* snakeDetector, const Mover* mover, const AppleDrawer* drawer, const AppleEatEvent* channel)
	: snakeDetector(snakeDetector), mover(mover), drawer(drawer), channel(channel) {
		mover->MoveApple();
	}

void AppleGO::Update() {
	if(snakeDetector->IsEaten()){
		channel->Notify();
		mover->MoveApple();
	}
	drawer->Draw();
}

AppleGO::~AppleGO() {
	delete snakeDetector; 
	snakeDetector = nullptr;
	delete mover;
	mover = nullptr;
	delete drawer;
	drawer = nullptr;
}
