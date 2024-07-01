#ifndef POS_H
#define POS_H

struct Pos {
	public:
		int x;
		int y;
		bool operator==(const Pos& other) const {
			return x == other.x && y == other.y;
		}
};
#endif
