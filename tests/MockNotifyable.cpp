#include <INotifyable.h>
#include "MockNotifyable.h"

MockNotifyable::MockNotifyable() {
	called = false;
}

void MockNotifyable::Notify() const {
	called = true;
}

bool MockNotifyable::WasCalled() const {
	return called;
}	
