#ifndef SNAKE_H
#define SNAKE_H

#include <SDL2/SDL.h>
#include <functional>
#include <tuple> 
#include <vector>

class SDLInit {
public: 
	std::tuple<SDL_Window*, SDL_Renderer*> Initialize();
};

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

class Quitter {
public:
	Quitter(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren);

private:
	void HandleQuit();
	SDL_Window* win;
	SDL_Renderer* ren;
};

class SnakeMotion {
public:
	SnakeMotion(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren);
	void Update();

private:
	void SetDirection(SDL_Keycode keyCode);
	std::vector<int> direction;
	std::vector<int> pos;
	int squareSize;
	SDL_Window* win;
	SDL_Renderer* ren;

};
#endif
