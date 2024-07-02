#include "TailRemover.h"

TailRemover::TailRemover(std::vector<Pos>* const pos) 
	: pos(pos) {
}

void TailRemover::RemoveTail() {
    for(int i = (*pos).size() -1; i > 0; i--) {
	(*pos)[i] = (*pos)[i - 1];
    }
}
