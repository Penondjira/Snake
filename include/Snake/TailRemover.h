#ifndef TAILREMOVER_H
#define TAILREMOVER_H

#include <vector>
#include "Pos.h"

class TailRemover {
	public:
		TailRemover(std::vector<Pos>* const pos);
		void RemoveTail();
	private:
		std::vector<Pos>* const pos;
};

#endif
