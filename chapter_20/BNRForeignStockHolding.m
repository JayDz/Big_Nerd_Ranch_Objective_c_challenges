// Chapter 20, Challenge 1
// jeffreydiaz27@gmail.com
// BNRForeignStockHolding.m

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

@synthesize conversionRate;

-(float) costInDollars
{
	return [super costInDollars] * [self conversionRate];
}

-(float) valueInDollars
{
	return [super valueInDollars] * [self conversionRate];
}

@end