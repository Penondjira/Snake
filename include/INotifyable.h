#ifndef INOTIFYABLE_H
#define INOTIFYABLE_H

class INotifyable {
	public:
		virtual void Notify() const = 0;
};

#endif
