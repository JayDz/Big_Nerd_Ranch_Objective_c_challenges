// Chapter 20, Challenge 1
// jeffreydiaz27@gmail.com
// BNRStockHolding.m

#import "BNRStockHolding.h"

@implementation BNRStockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;
@synthesize symbol;

-(float) costInDollars
{
	return [self purchaseSharePrice] * [self numberOfShares];
}

-(float) valueInDollars
{
	return [self currentSharePrice] * [self numberOfShares];
}

@end