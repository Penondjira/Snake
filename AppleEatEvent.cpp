#include <functional>
#include "AppleEatEvent.h"

void AppleEatEvent::Subscribe(const std::function<void()>& callback) {
	callbacks.push_back(callback);
}

void AppleEatEvent::Notify() const{
	for (const std::function<void()>& callback : callbacks){
		callback();
	}
}	
