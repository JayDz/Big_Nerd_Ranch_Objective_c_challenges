// Challenge 2, Chapter 8
// jeffreydiaz27@gmail.com

#include <readline/readline.h>
#include <stdio.h>

int main(int argc, const char* argv[])
{
	printf("Where should I start counting? ");
	const char* input = readline(NULL);
	int num = atoi(input);

	if (num) {
		for (int i = num; i >= 0; i -= 3) {
			printf("%d\n", i);
			if ((i % 5) == 0)
				printf("Found one!\n");
		}
	} else {
		printf("CYAA\n");
	}

	return 0;
}
