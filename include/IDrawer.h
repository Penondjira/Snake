#ifndef IAPPLE_DRAWER_H
#define IAPPLE_DRAWER_H

class IDrawer {
	public:
		virtual void Draw() const = 0;
		virtual ~IDrawer() = default;
};

#endif
