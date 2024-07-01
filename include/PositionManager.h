#ifndef POSITION_MANAGER_H
#define POSITION_MANAGER_H

#include "Pos.h"

class PositionManager {
	public:
		const Pos& GetPosition() const;
		void SetPosition(const Pos &newPos);
		
	private:
		Pos pos;
};
#endif
