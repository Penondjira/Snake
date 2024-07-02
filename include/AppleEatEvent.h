#ifndef APPLEEATEVENT_H
#define APPLEEATEVENT_H

#include "INotifyable.h"
#include <functional>
#include <vector>

class AppleEatChannel : public INotifyable{
public:
	void Subscribe(const std::function<void()>& callback);
	void Notify() const;

private:
	std::vector<std::function<void()>> callbacks;
};

#endif
