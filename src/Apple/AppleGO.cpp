#include "AppleGO.h"
#include <iostream>

AppleGO::AppleGO(const ISnakeDetector* snakeDetector, const IMover* mover, const IDrawer* drawer, const INotifyable* channel)
	: snakeDetector(snakeDetector), mover(mover), drawer(drawer), channel(channel) {
		mover->MoveApple();
	}

void AppleGO::Update() {
		//std::cout << "channel: " << channel << std::endl;
		//std::cout << "drawer: " << drawer << std::endl;
		//std::cout << "mover: " << mover << std::endl;
		//std::cout << "snakeDetector: " << snakeDetector << std::endl;
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
