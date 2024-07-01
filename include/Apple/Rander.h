#ifndef RANDER_H
#define RANDER_H

#include <random>

class Rander {
	public:
		Rander();
		int GetRandInt(const int &min, const int &max);
	private:
		std::mt19937 gen;
};

#endif
