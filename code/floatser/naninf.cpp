/*	Project:    nan_inf
	Name:       Prof. Kivolowitz
	Partner:    PARTNER'S NAME IF ANY
	Class:      example: CSC 1810 - Section 1
*/

#include <cmath>
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
	float numerator = 1.0f;
	float denominator = 0.0f;
	float infinity, nan, f;

	infinity = numerator / denominator;
	nan = 0.0f / denominator;

	// Showing that a string is printed containing inf and nan.
	cout << numerator << " divided by " << denominator << " is " << infinity << endl;
	cout << 0 << " divided by " << denominator << " is " << nan << endl;

	// Shows that once you go bad, you don't come back.
	infinity++;
	cout << "inf++ "
		 << " is " << infinity << endl;
	nan += 1;
	cout << "nan++ "
		 << " is " << nan << endl;

	f = nan + infinity;
	cout << "a nan + inf is " << f << endl;

	f = infinity + nan;
	cout << "an inf + nan is " << f << endl;

	cout << "-nan is " << -nan << endl;
	cout << "-inf is " << -infinity << endl;
	cout << boolalpha;

	cout << "result of isnan() on nan: " << isnan(nan) << endl;
	cout << "result of isnan() on infinity: " << isnan(infinity) << endl;
	cout << "result of isinf() on nan: " << isinf(nan) << endl;
	cout << "result of isinf() on infinity: " << isinf(infinity) << endl;

	return 0;
}