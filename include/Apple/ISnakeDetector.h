#ifndef ISNAKEDETECTOR_H
#define ISNAKEDETECTOR_H

#include <PositionManager.h>

class ISnakeDetector {
	public:
		virtual bool IsEaten() const = 0;
		virtual ~ISnakeDetector() = default;
};
#endif
