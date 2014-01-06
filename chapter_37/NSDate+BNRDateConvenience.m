//  NSDate+BNRDateConvenience.m
//  Challenge for chapter 37

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

+(NSDate*) BNR_setDateToYear:(int)y Month:(int)m Day:(int)d
{
	return [NSDate dateWithString:[NSString stringWithFormat:@"%d-%d-%d 12:00:00 +0000", y,m,d]];
}

@end
