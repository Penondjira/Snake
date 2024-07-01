#include "PositionManager.h"

const Pos& PositionManager::GetPosition() const{
	return pos;
}

void PositionManager::SetPosition(const Pos &newPos) {
	pos = newPos;
}
