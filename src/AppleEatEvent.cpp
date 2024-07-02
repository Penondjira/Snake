#include <functional>
#include "AppleEatEvent.h"

void AppleEatChannel::Subscribe(const std::function<void()>& callback) {
	callbacks.push_back(callback);
}

void AppleEatChannel::Notify() const{
	for (const std::function<void()>& callback : callbacks){
		callback();
	}
}	
