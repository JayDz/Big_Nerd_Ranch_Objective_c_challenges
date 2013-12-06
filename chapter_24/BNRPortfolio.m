// Challenge 1, Chapter 24
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

-(NSArray*) topHoldings
{
	if (!_holdings) return nil;
	
	NSSortDescriptor* valueSort = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars" ascending:YES];
	NSArray* top3 = [_holdings sortedArrayUsingDescriptors:@[valueSort]];
	
	BNRStockHolding* a = nil;
	BNRStockHolding* b = nil;
	BNRStockHolding* c = nil;
	
	NSUInteger count = [top3 count];
	if (count >= 1) a = [top3 objectAtIndex:0];
	if (count >= 2) b = [top3 objectAtIndex:1];
	if (count >= 3) c = [top3 objectAtIndex:2];
	
	NSMutableArray* ret = [[NSMutableArray alloc]init];
	[ret addObject:(a) ? a : [NSNull null]];
	[ret addObject:(b) ? b : [NSNull null]];
	[ret addObject:(c) ? c : [NSNull null]];
	
	return ret;
}
@end
