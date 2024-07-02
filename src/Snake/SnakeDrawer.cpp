#include "SnakeDrawer.h"

SnakeDrawer::SnakeDrawer(const std::vector<Pos>* const snakePos, const int squareLength, SDL_Renderer* const ren) 
	: snakePos(snakePos), squareLength(squareLength), ren(ren){
} 

void SnakeDrawer::Draw() const {
	for(int i = 0; i < snakePos->size(); i++) {
		SDL_Rect rect = { (*snakePos)[i].x, (*snakePos)[i].y, squareLength, squareLength };
		SDL_SetRenderDrawColor(ren, 0, 255, 0, 255);  // Green square
		SDL_RenderFillRect(ren, &rect);
	}
}
