#include <SDL2/SDL.h>
#include <SDL2/SDL_timer.h>
#include "../include/AppleEatEvent.h"
#include "../include/SDLInit.h"
#include <SDL2/SDL_video.h>
#include <tuple>
#include "../include/EventPoller.h"
#include "../include/Quitter.h"
#include "DirectionManager.h"
#include "HeadUpdater.h"
#include "SnakeDrawer.h"
#include "SnakeMotion.h"
#include "AppleCreator.h"
#include "TailRemover.h"
#include <vector>

int main(int argc, char* argv[]) {
    SDLInit sdlInitializer;
    std::tuple<SDL_Window*, SDL_Renderer*> initInfo = sdlInitializer.Initialize();
    SDL_Window* win = std::get<0>(initInfo);
    SDL_Renderer* ren = std::get<1>(initInfo);

    const int squareLength = 16;

    EventPoller eventPoller;
    Quitter quitter = Quitter(&eventPoller, win, ren);
    AppleEatChannel appleEatChannel = AppleEatChannel();
    AppleEatChannel* const appleEatEventPtr = &appleEatChannel;
    DirectionManager directionManager = DirectionManager(&eventPoller);

	std::vector<Pos> snakePos(3);
	snakePos[0].x = 128;
	snakePos[0].y = 128;
	snakePos[1].x = 128 - squareLength;
	snakePos[1].y = 128;
	snakePos[2].x = 128 - squareLength - squareLength;
	snakePos[2].y = 128;

    TailRemover tailRemover = TailRemover(&snakePos);
    HeadUpdater headUpdater = HeadUpdater(&snakePos, &directionManager, squareLength);
    SnakeDrawer snakeDrawer = SnakeDrawer(&snakePos, squareLength, ren);
    SnakeMotion snake = SnakeMotion(&headUpdater, &snakeDrawer, appleEatEventPtr, &snakePos, &tailRemover);
    const SnakeMotion* snakePtr = &snake;
    int winWidth, winHeight;
    SDL_GetWindowSize(win, &winWidth, &winHeight);
    const int minWidth = squareLength;
    const int minHeight = squareLength;

    AppleCreator appleCreator = AppleCreator(winWidth, winHeight, squareLength, appleEatEventPtr, ren, &snakePos);
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
