// Challenge 1, Chapter 14
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSDateComponents* comp = [[NSDateComponents alloc] init];
		[comp setYear:1985];
		[comp setMonth:04];
		[comp setDay:27];
		[comp setHour:12];
		[comp setMinute:0];
		[comp setSecond:0];
		
		NSCalendar* cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
		NSDate* birthday = [cal dateFromComponents:comp];
		
		double secondsAlive = [[NSDate date] timeIntervalSinceDate:birthday];
		NSLog(@"Seconds alive = %.1f\n", secondsAlive);
	}
	return 0;
}
