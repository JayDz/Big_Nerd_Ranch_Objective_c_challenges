// Challenge for Chapter 38

#define MAGIC_NUMBER 0x5555555555555555

#include <stdio.h>

int main(int argc, const char * argv[])
{
	unsigned long number = 0;
	number |= MAGIC_NUMBER;
	
	printf("%lu\n", number);
	
	return 0;
}
