// Challenge 1, chapter 8
// jeffreydiaz27@gmail.com

#include <stdio.h>

int main(int argc, const char* argv[])
{
	for (int i = 99; i >= 0; i -= 3) {
		printf("%d\n", i);
		if ((i % 5) == 0)
			printf("Found one!\n");
	}

	return 0;
}
