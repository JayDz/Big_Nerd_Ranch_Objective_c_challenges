// Challenge 1, Chapter 5
// jeffreydiaz27@gmail.com

#include <stdio.h>

float remainingAngle(float angleA, float angleB)
{
	return 180 - (angleA + angleB);
}

int main(int argc, const char* argv[])
{
	float angleA = 30.0;
	float angleB = 60.0;
	float angleC = remainingAngle(angleA, angleB);
	printf("The third angle is %.2f\n", angleC);
	return 0;
}
