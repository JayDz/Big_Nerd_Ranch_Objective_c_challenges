// Challenge 1, Chapter 21
// jeffreydiaz27@gmail.com
// BNRPortfolio.m

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@implementation BNRPortfolio

-(void) addHolding:(BNRStockHolding *)holding
{
	if (!_holdings)
		_holdings = [[NSMutableArray alloc]init];
	
	[_holdings addObject:holding];
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