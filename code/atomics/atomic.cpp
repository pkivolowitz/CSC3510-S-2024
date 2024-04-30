#include <atomic>
#include <cinttypes>

extern "C" void IncrementCounter(std::atomic<int64_t>& a) {
	// This is equivalent to a.fetch_add(1).
	a++;
}

extern "C" void AddFunction(std::atomic<int64_t> &a, int64_t b) {
	// This is NOT atomic. No guarantees are made.
	a = a + b;
}

extern "C" void AddFetch(std::atomic<int64_t>&a, int64_t b) {
	// This is the generalization of the atomic ++ operator.
	a.fetch_add(b);
}
