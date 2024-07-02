#include <SDL2/SDL.h>
#include <SDL2/SDL_render.h>
#include <SDL2/SDL_video.h>
#include <functional>
#include "SnakeMotion.h"
#include <vector>
#include "AppleEatEvent.h"
#include "HeadUpdater.h"
#include "TailRemover.h"
#include "SnakeDrawer.h"

void SnakeMotion::HandleAppleEaten(){
    pos->push_back({-100, -100});
}

std::vector<Pos>* SnakeMotion::GetPositions() const {
    return pos;
}

void SnakeMotion::Update() {
    tailRemover->RemoveTail();
    headUpdater->UpdateHead();
    snakeDrawer->Draw();
}

SnakeMotion::SnakeMotion(HeadUpdater* const headUpdater, const SnakeDrawer* const snakeDrawer, AppleEatChannel* const &appleEatEvent, std::vector<Pos>* const pos, TailRemover* const tailRemover) : headUpdater(headUpdater), snakeDrawer(snakeDrawer), appleEatEvent(appleEatEvent), pos(pos), tailRemover(tailRemover) {
	appleEatEvent->Subscribe([this]() { HandleAppleEaten();});
}
