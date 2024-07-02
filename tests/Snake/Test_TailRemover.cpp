#include "TailRemover.h"
#include "gtest/gtest.h"

TEST(TestTailRemover, RemovesLastSegment) {
	int squareLength;
	std::vector<Pos> pos(3);
	pos[0].x = 128;
	pos[0].y = 128;
	pos[1].x = 128 - squareLength;
	pos[1].y = 128;
	pos[2].x = 128 - squareLength - squareLength;
	pos[2].y = 128;
	TailRemover tailRemover = TailRemover(&pos);
	tailRemover.RemoveTail();
	EXPECT_EQ(pos[0].x, 128);
	EXPECT_EQ(pos[0].y, 128);
	EXPECT_EQ(pos[1].x, 128);
	EXPECT_EQ(pos[1].y, 128);
	EXPECT_EQ(pos[2].x, 128 - squareLength);
	EXPECT_EQ(pos[2].y, 128);
}
