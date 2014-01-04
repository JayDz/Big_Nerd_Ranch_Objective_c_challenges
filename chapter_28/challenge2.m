//  Challenge #2 Chapter 28
//
//  Created by jay on 1/2/14.


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	@autoreleasepool {
		NSMutableArray* data = [[NSMutableArray alloc]init];
		
		// Array data
		NSArray* arrayData = @[@"Item1", @"Item2"];
		[data addObject:arrayData];
		
		// Dictionary data
		NSMutableDictionary* dicData = [NSMutableDictionary dictionary];
		[dicData setObject:@"DictItem1" forKey:@"first"];
		[dicData setObject:@"DickItem2" forKey:@"second"];
		[data addObject:dicData];
		
		// String data
		NSString* str1 = @"String one";
		NSString* str2 = @"String two";
		[data addObject:str1];
		[data addObject:str2];
		
		
		// Integer data
		NSNumber* intData   = [NSNumber numberWithInt:15];
		NSNumber* floatData = [NSNumber numberWithFloat:3.14];
		NSNumber* boolData  = [NSNumber numberWithBool:YES];
		[data addObject:intData];
		[data addObject:floatData];
		[data addObject:boolData];
		
		// Date data
		NSDate* date = [NSDate date];
		[data addObject:date];
		
		[data writeToFile:@"/tmp/stocks.plist" atomically:YES];
	}
	return 0;
}
