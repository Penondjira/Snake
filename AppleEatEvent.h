#ifndef APPLEEATEVENT_H
#define APPLEEATEVENT_H

#include <functional>
#include <vector>

class AppleEatEvent {
public:
	void Subscribe(const std::function<void()>& callback);
	void Notify() const;

private:
	std::vector<std::function<void()>> callbacks;
};

#endif
