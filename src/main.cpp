#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include "AppleEatEvent.h"
#include "SDLInit.h"
#include <SDL2/SDL_video.h>
#include <tuple>
#include "EventPoller.h"
#include "Quitter.h"
#include "SnakeCreator.h"
#include "SnakeGO.h"
#include "AppleCreator.h"
#include <vector>

int main(int argc, char* argv[]) {
    SDLInit sdlInitializer;
    std::tuple<SDL_Window*, SDL_Renderer*> initInfo = sdlInitializer.Initialize();
    SDL_Window* win = std::get<0>(initInfo);
    SDL_Renderer* ren = std::get<1>(initInfo);

    EventPoller eventPoller;
    Quitter quitter = Quitter(&eventPoller, win, ren);

    const int squareLength = 16;
    AppleEatChannel appleEatChannel;

    SnakeCreator snakeCreator = SnakeCreator(squareLength, &eventPoller, &appleEatChannel, ren);
    SnakeGO* const snake = snakeCreator.CreateSnake();

    std::vector<Pos>* snakePos = snake->GetPositions();
    int winWidth, winHeight;
    SDL_GetWindowSize(win, &winWidth, &winHeight);
    const int minWidth = squareLength;
    const int minHeight = squareLength;

    AppleCreator appleCreator = AppleCreator(winWidth, winHeight, squareLength, &appleEatChannel, ren, snakePos);
    AppleGO* apple = appleCreator.CreateApple();

    while (true) {
        int quit = eventPoller.PollBufferedEvents();
        if (quit) {
            break;
        }
        SDL_SetRenderDrawColor(ren, 0, 0, 0, 255);  
        SDL_RenderClear(ren); //draw with this color on top of everything
        snake->Update();
        apple->Update();
        SDL_RenderPresent(ren); //switches front buffer with back buffer
        SDL_Delay(125);
    }

    delete snake;
    delete apple;

    return 0;
}
