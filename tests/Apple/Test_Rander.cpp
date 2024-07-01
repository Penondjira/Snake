#include <gtest/gtest.h>
#include "Rander.h"


TEST(RanderTest, CreatesWithoutSegFault) {
	Rander rander = Rander();
	EXPECT_EQ(true, true);
}

TEST(RanderTest, GetRandomInt) {
	Rander rander = Rander();
	int min = 1;
	int max = 10;
	int rando = rander.GetRandInt(min, max);

	EXPECT_EQ(rando >= min, true);
	EXPECT_EQ(rando <= max, true);
}
