// Challenge 2, Chapter 16
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSLog(@"Where should I start counting? ");
		const char* input = readline(NULL);
		NSString* input_str = [NSString stringWithUTF8String:input];
		
		int num = atoi([input_str UTF8String]);
		
		if (num) {
			for (int i  = num; i >= 0; i -= 3) {
				NSLog(@"%d\n", i);
				if ((i % 5) == 0)
					NSLog(@"Found one!\n");
			}
		} else {
			NSLog(@"CYYA\n");
		}
	}
	return 0;
}
