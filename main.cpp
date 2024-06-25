#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include "snake.h"

int main(int argc, char* argv[]) {
    SDLInit sdlInitializer;
    std::tuple<SDL_Window*, SDL_Renderer*> initInfo = sdlInitializer.Initialize();
    SDL_Window* win = std::get<0>(initInfo);
    SDL_Renderer* ren = std::get<1>(initInfo);

    EventPoller eventPoller;
    EventPoller* eventPollerPtr = &eventPoller;
    Quitter quitter = Quitter(eventPollerPtr, win, ren);
    SnakeMotion snake = SnakeMotion(eventPollerPtr, win, ren);

    while (true) {
        int quit = eventPoller.PollBufferedEvents();
        if (quit) {
            break;
        }
        snake.Update();
        SDL_Delay(16);
    }

    return 0;
}
