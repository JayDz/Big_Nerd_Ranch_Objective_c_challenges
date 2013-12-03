// Challenge 1, Chapter 13
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{

	@autoreleasepool {
		NSHost*   my_host   = [NSHost currentHost];
		NSString* host_name = [my_host localizedName];
		
		NSLog(@"Host name: %@\n", host_name);
	}
    return 0;
}
