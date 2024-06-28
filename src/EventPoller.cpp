#include <SDL2/SDL.h>
#include <SDL2/SDL_keycode.h>
#include <functional>
#include "../include/EventPoller.h"

EventPoller::EventPoller(){
}

void EventPoller::OnQuit() {
	for (std::function<void()>& handler : quitSubscriberCallbacks) {
		handler();
	}
}

void EventPoller::OnKeyDown(SDL_Keycode keyCode) {
	for (std::function<void(SDL_Keycode keyCode)>& handler : keycodeSubscriberCallbacks) {
		handler(keyCode);
	}
}

int EventPoller::PollBufferedEvents() {
        while (SDL_PollEvent(&e) != 0) { //modifies e
		if (e.type == SDL_QUIT) {
			OnQuit();
			return 1;
		} else if (e.type == SDL_KEYDOWN) {
			if (e.key.keysym.sym == SDLK_ESCAPE) {
				OnQuit();
				return 1;
			}
			else {
				OnKeyDown(e.key.keysym.sym);
			}
		}	
	}
	return 0;
}

void EventPoller::SubscribeToQuit(const std::function<void()>& callback){
	quitSubscriberCallbacks.push_back(callback);
}

void EventPoller::SubscribeToKeyDown(const std::function<void(SDL_Keycode)>& callback){
	keycodeSubscriberCallbacks.push_back(callback);
}
