#ifndef EVENTPOLLER_H
#define EVENTPOLLER_H

#include <SDL2/SDL.h>
#include <functional>

class EventPoller {
public:
	EventPoller();
	int PollBufferedEvents();
	void SubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback);
	void UnsubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback);
	void SubscribeToQuit(const std::function<void()>& callback);
	void UnsubscribeToQuit(const std::function<void()>& callback);

private:
	void OnKeyDown(SDL_Keycode keyCode);
	void OnQuit();
	std::vector<std::function<void(SDL_Keycode)>> keycodeSubscriberCallbacks;
	std::vector<std::function<void()>> quitSubscriberCallbacks;
	SDL_Event e;
};
#endif
