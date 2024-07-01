#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include "../include/AppleEatEvent.h"
#include "../include/SDLInit.h"
#include <SDL2/SDL_video.h>
#include <tuple>
#include "../include/EventPoller.h"
#include "../include/Quitter.h"
#include "../include/SnakeMotion.h"
#include "AppleCreator.h"
#include "PositionManager.h"
#include <vector>

int main(int argc, char* argv[]) {
    SDLInit sdlInitializer;
    std::tuple<SDL_Window*, SDL_Renderer*> initInfo = sdlInitializer.Initialize();
    SDL_Window* win = std::get<0>(initInfo);
    SDL_Renderer* ren = std::get<1>(initInfo);

    const int squareLength = 16;

    EventPoller eventPoller;
    EventPoller* eventPollerPtr = &eventPoller;
    Quitter quitter = Quitter(eventPollerPtr, win, ren);
    AppleEatEvent appleEatChannel = AppleEatEvent();
    AppleEatEvent* const appleEatEventPtr = &appleEatChannel;
    SnakeMotion snake = SnakeMotion(eventPollerPtr, win, ren, squareLength, appleEatEventPtr);
    const SnakeMotion* snakePtr = &snake;
    //FIXME: have get position manager function in snake
    std::vector<int> tempSnakePos = snake.GetPosition();
    Pos snakePosStruct;
    snakePosStruct.x = tempSnakePos[0];
    snakePosStruct.y = tempSnakePos[1];
    PositionManager* snakePos; 
    snakePos->SetPosition(snakePosStruct);
    int winWidth, winHeight;
    SDL_GetWindowSize(win, &winWidth, &winHeight);
    const int minWidth = squareLength;
    const int minHeight = squareLength;

    AppleCreator appleCreator = AppleCreator(winWidth, winHeight, squareLength, appleEatEventPtr, ren, snakePos);
    AppleGO* apple = appleCreator.CreateApple();

    while (true) {
        int quit = eventPoller.PollBufferedEvents();
        if (quit) {
            break;
        }
        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);  
        SDL_RenderClear(ren); //draw with this color on top of everything
        snake.Update();
        apple->Update();
        SDL_RenderPresent(ren); //switches front buffer with back buffer
        SDL_Delay(250);
    }

    return 0;
}
