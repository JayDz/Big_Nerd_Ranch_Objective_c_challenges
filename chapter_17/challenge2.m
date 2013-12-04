// Challenge 2, Chapter 17
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>
#include <ctype.h>

// Called by found when we find a match.
void print(NSString* properName, NSString* word)
{
	NSLog(@"Matched found: %@ with %@\n", properName, word);
}

// Binary search the array for search_word.
// Credit: albertopasca.it
void found(NSString* search_word, NSMutableArray* array)
{
	CFRange range;
	range.location = 0;
	range.length   = [array count];
	
	CFIndex index = CFArrayBSearchValues(
		(__bridge CFArrayRef)(array), range, (__bridge const void *)(search_word),
		CFStringCompare, kCFCompareForcedOrdering);
	
	if ([search_word isEqualToString:[array objectAtIndex:index]])
		print(search_word, [[array objectAtIndex:index]capitalizedString]);
}

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSString* input = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
							    encoding:NSUTF8StringEncoding
							       error:NULL];
		
		NSArray* properNames = [input componentsSeparatedByString:@"\n"];
		input = nil; // free up heap space.
		
		// populate input NSString again.
		input = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
						  encoding:NSUTF8StringEncoding
						     error:NULL];
		
		NSArray* words = [input componentsSeparatedByString:@"\n"];
		input = nil; // free up again.

		NSMutableArray* lowercase_words = [[NSMutableArray alloc]init];
		
		// Store only words (not proper names) in lowercase_words.
		for (NSString* word in words) {
			const char* w = [word cStringUsingEncoding:NSUTF8StringEncoding];
			if (islower(w[0]))
				[lowercase_words addObject:word];
		}
		words = nil; // we don't need this anymore.

		for (NSString* s in properNames)
			found([s lowercaseString], lowercase_words);
	}
	return 0;
}
