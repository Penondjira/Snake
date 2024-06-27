#include <SDL2/SDL.h>
#include <functional>
#include "Quitter.h"

void Quitter::HandleQuit() {
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    SDL_Quit();
}

Quitter::Quitter(EventPoller* eventPoller, SDL_Window* win, SDL_Renderer* ren) : win(win), ren(ren){
	eventPoller->SubscribeToQuit([this]() { HandleQuit();});
}

