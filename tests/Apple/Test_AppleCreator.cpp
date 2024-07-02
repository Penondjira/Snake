#include "AppleCreator.h"
#include "MockNotifyable.h"
#include "PositionManager.h"
#include <gtest/gtest.h>
#include <SDL2/SDL.h>


TEST(TestAppleCreator, RunsUpdateNoCrash) {

    if (SDL_Init(SDL_INIT_VIDEO) != 0) {
        std::cout << "SDL_Init Error: " << SDL_GetError() << std::endl;
    }

    SDL_Window *win = SDL_CreateWindow("Hello SDL", 100, 100, 640, 480, SDL_WINDOW_SHOWN);
    if (win == nullptr) {
        std::cout << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
    }

    SDL_Renderer *ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (ren == nullptr) {
        SDL_DestroyWindow(win);
        std::cout << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
    }
	
	MockNotifyable mockChannel;
	PositionManager posMan;


	AppleCreator appleCreator = AppleCreator(800, 600, 10, &mockChannel, ren, &posMan);
	bool madeAppleCreatorNoCrash = true;
	EXPECT_TRUE(madeAppleCreatorNoCrash);
	AppleGO* apple = appleCreator.CreateApple();
	bool madeAppleNoCrash = true;
	EXPECT_TRUE(madeAppleNoCrash);
	apple->Update();
	bool ranUpdateNoCrash = true;
	EXPECT_TRUE(ranUpdateNoCrash);
}
