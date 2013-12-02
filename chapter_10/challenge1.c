// Challenge 1, Chapter 10
// jeffreydiaz27@gmail.com

#include <math.h>
#include <stdio.h>

void metersToFeetAndInches(double meters, unsigned int* ftPtr, double* inPtr)
{
	double rawFeet = meters * 3.281;
		
	double feet;
	double fractionalFoot = modf(rawFeet, &feet);

	if (ftPtr) {
		printf("Storing %.0f to the address %p\n", feet, ftPtr);
		*ftPtr = (unsigned int)feet;
	}

	double inches = fractionalFoot * 12.0;

	if (inPtr) {
		printf("Storing %.2f to the address %p\n", inches, inPtr);
		*inPtr = inches;
	}
}

int main(int argc, char* argv[])
{
	double meters = 3.0;
	unsigned int feet;
	double inches;

	metersToFeetAndInches(meters, &feet, &inches);
	printf("%.1f meters is equal to %d feet and %.1f inches.", meters, feet, inches);

	return 0;
}
