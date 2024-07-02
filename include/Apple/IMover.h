#ifndef IMOVER_H
#define IMOVER_H

class IMover {
	public:
		virtual void MoveApple() const = 0;
		virtual ~IMover() = default;
};
#endif
