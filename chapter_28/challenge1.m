//  Challenge #1 Chapter 28
//
//  Created by jay on 1/2/14.


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSArray* originalStrings = @[@"Sauerkraut", @"Raygun",
					     @"Big Nerd Ranch", @"Mississippi"];
		
		NSLog(@"Original strings: %@", originalStrings);
		
		NSMutableArray* devowelizedStrings = [NSMutableArray array];
		
		NSArray* vowels = @[@"a", @"e", @"i", @"o", @"u"];
		
		[originalStrings enumerateObjectsUsingBlock:^(id string, NSUInteger i, BOOL* stop) {
			NSMutableString* newString = [NSMutableString stringWithString:string];
			
			for (NSString* s in vowels) {
				NSRange fullRange = NSMakeRange(0, [newString length]);
				[newString replaceOccurrencesOfString:s
							   withString:@""
							      options:NSCaseInsensitiveSearch
								range:fullRange];
			}
			[devowelizedStrings addObject:newString];
		}];
		
		NSLog(@"No vowel strings: %@\n", devowelizedStrings);
	}
	return 0;
}

