#include "HeadUpdater.h"
#include <iostream>


HeadUpdater::HeadUpdater(std::vector<Pos>* const pos, IDirectionManager* const directionManager, const int &squareLength)
	: pos(pos), directionManager(directionManager), squareLength(squareLength) {
}

void HeadUpdater::UpdateHead() {
    std::vector<int> currentFrameDirection = directionManager->GetDirection();
	directionManager->ProcessQueuedDirection();
    (*pos)[0].x = (*pos)[1].x + squareLength*currentFrameDirection[0];
    (*pos)[0].y = (*pos)[1].y + squareLength*currentFrameDirection[1];
}
