// Challenge 1, Chapter 22
// jeffreydiaz27@gmail.com
// BNRPortfolio.m

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
	NSMutableArray* _holdings;
}
@end

@implementation BNRPortfolio

-(void) addHolding:(BNRStockHolding *)holding
{
	if (!_holdings)
		_holdings = [[NSMutableArray alloc]init];
	
	[_holdings addObject:holding];
}

-(void) removeHolding:(BNRStockHolding*) holding
{
	if (!_holdings)         return; // make sure holdings is not nil.
	if (![_holdings count]) return; // make sure holdings is not empty.
	
	[_holdings removeObject:holding];
}

-(float) currentValue
{
	float value = 0;
	for (BNRStockHolding* stock in _holdings) {
		float cost = [stock costInDollars];
		float market = [stock valueInDollars];
		
		value += (market - cost);
	}
	return value;
}

@end