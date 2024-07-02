#ifndef KEYDOWNCHANNEL_H
#define KEYDOWNCHANNEL_H

#include <functional>
#include <SDL2/SDL.h>

class IKeyDownChannel {
	public:
		virtual void SubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback) = 0;
};

#endif
