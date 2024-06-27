#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include "Apple.h"
#include "AppleEatEvent.h"
#include "SDLInit.h"
#include <SDL2/SDL_video.h>
#include <tuple>
#include "EventPoller.h"
#include "Quitter.h"
#include "SnakeMotion.h"

int main(int argc, char* argv[]) {
    SDLInit sdlInitializer;
    std::tuple<SDL_Window*, SDL_Renderer*> initInfo = sdlInitializer.Initialize();
    SDL_Window* win = std::get<0>(initInfo);
    SDL_Renderer* ren = std::get<1>(initInfo);

    const int squareLength = 16;

    EventPoller eventPoller;
    EventPoller* eventPollerPtr = &eventPoller;
    Quitter quitter = Quitter(eventPollerPtr, win, ren);
    AppleEatEvent appleEatEvent = AppleEatEvent();
    AppleEatEvent* const appleEatEventPtr = &appleEatEvent;
    SnakeMotion snake = SnakeMotion(eventPollerPtr, win, ren, squareLength, appleEatEventPtr);
    const SnakeMotion* snakePtr = &snake;
    Apple apple = Apple(appleEatEventPtr, snakePtr, win, ren, squareLength);
    apple.SpawnApple();
    while (true) {
        int quit = eventPoller.PollBufferedEvents();
        if (quit) {
            break;
        }
        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);  
        SDL_RenderClear(ren); //draw with this color on top of everything
        snake.Update();
        apple.Update();
        SDL_RenderPresent(ren); //switches front buffer with back buffer
        SDL_Delay(250);
    }

    return 0;
}
