#include "Rander.h"

Rander::Rander(){
	std::random_device rd;
	gen = std::mt19937(rd());
}	

int Rander::GetRandInt(const int &min, const int &max) {
	std::uniform_int_distribution<> distr(min, max);
	return distr(gen);
}
