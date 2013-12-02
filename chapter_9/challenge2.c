// Challenge 2, Chapter 9
// jeffreydiaz27@gmail.com

#include <limits.h> // Contains information for min/max values on our system
#include <stdio.h>
int main(int argc, const char* argv[])
{
	printf("Smallest number a short can store = %d\n", SHRT_MIN);
	printf("Largest number a short can store = %d\n", SHRT_MAX);

	printf("Largest number that an unsigned short can store = %d\n", USHRT_MAX);

	return 0;
}
