// Challenge 1, Chapter 17
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSMutableArray* mArray = [[NSMutableArray alloc] init];
		
		[mArray addObject:@"Loaf of bread"];
		[mArray addObject:@"Container of milk"];
		[mArray addObject:@"Stick of butter"];
		
		NSLog(@"My grocery list is:\n");
		
		for (NSString* item in mArray)
			NSLog(@"%@\n", item);
	}
	return 0;
}
