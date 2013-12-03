// Challenge 1, Chapter 16
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSString* sentence = @"This is a short sentence.";
		NSString* subStr = @"short";
		
		NSRange subStrRange = [sentence rangeOfString:subStr options:NSCaseInsensitiveSearch];
		
		if (subStrRange.location != NSNotFound) {
			NSLog(@"Substring found!\n");
			NSLog(@"%@\n", [sentence substringWithRange:subStrRange]);
		} else {
			NSLog(@"Substring not found.\n");
		}
	}
	return 0;
}
