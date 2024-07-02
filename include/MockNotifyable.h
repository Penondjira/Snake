#include "INotifyable.h"

class MockNotifyable : public INotifyable {
	public:
		MockNotifyable();
		void Notify() const;
		bool WasCalled() const;
	private:
		mutable bool called;
};
