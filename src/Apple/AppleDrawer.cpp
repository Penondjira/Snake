#include "AppleDrawer.h"

AppleDrawer::AppleDrawer(const PositionManager* applePos, const int squareLength, SDL_Renderer* ren)
	: applePos(applePos), squareLength(squareLength), ren(ren) {
}

void AppleDrawer::Draw() const {
        SDL_Rect rect = {applePos->GetPosition().x, applePos->GetPosition().y, squareLength, squareLength};
        SDL_SetRenderDrawColor(ren, 255, 0, 0, 255);
        SDL_RenderFillRect(ren, &rect);
}
