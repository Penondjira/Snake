#ifndef HEADUPDATER_H
#define HEADUPDATER_H

#include "IDirectionManager.h"
#include "Pos.h"

class HeadUpdater {
	public:
		HeadUpdater(std::vector<Pos>* const pos, IDirectionManager* const directionManager, const int &squareLength);
		void UpdateHead();
	private:
		std::vector<Pos>* const pos;
		IDirectionManager* const directionManager;
		const int squareLength;
};


#endif
