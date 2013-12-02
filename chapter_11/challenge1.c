// Challenge 1, Chapter 11
// jeffreydiaz27@gmail.com

#include <stdio.h>
#include <time.h>

int main(int argc, const char* argv[])
{
	const long secondsIntoTheFuture = 4000000;
	long secondsSince1970 = time(NULL);
	const long seconds = secondsSince1970 + secondsIntoTheFuture;
	struct tm future_date;
	
	// Get date 4 million seconds passed our current date.
	localtime_r(&seconds, &future_date);
	
	// We must adjust the year since year 2000 becomes 100, 2001 becomes 101, etc.
	int actual_year = 2000;
	actual_year += future_date.tm_year - 100;
	
	printf("The date will be: %d-%d-%d\n", future_date.tm_mon + 1, future_date.tm_mday, actual_year);
	return 0;
}
