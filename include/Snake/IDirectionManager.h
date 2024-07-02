#ifndef IDIRECTIONSETTER_H
#define IDIRECTIONSETTER_H

#include <vector>

class IDirectionManager {
	public:
		virtual std::vector<int> GetDirection() = 0;
		virtual void ProcessQueuedDirection() = 0;
		virtual ~IDirectionManager() = default;
	private:
};

#endif
