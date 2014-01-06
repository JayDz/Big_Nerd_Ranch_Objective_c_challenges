// Challenge for Chapter 39

#include <stdio.h>

int spaceCount(const char* sentence)
{
	int count = 0;
	
	while (*sentence) {
		if (*sentence == 0x20)
			++count;
		++sentence;
	}
	
	return count;
}

int main(int argc, const char * argv[])
{
	const char* sentence = "He was not in the cab at the time.";
	
	printf("\"%s\" has %d spaces.\n", sentence, spaceCount(sentence));
	
	return 0;
}
