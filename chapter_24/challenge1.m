// Challenge 1, Chapter 24
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		
		BNRStockHolding* aapl = [[BNRStockHolding alloc]init];
		// wishful thinking..
		[aapl setNumberOfShares:1000];
		[aapl setPurchaseSharePrice:6.50];
		[aapl setCurrentSharePrice:540.0];
		[aapl setSymbol:@"aapl"];
		
		BNRStockHolding* rht = [[BNRStockHolding alloc]init];
		[rht setNumberOfShares:40];
		[rht setPurchaseSharePrice:43.54];
		[rht setCurrentSharePrice:46.50];
		[rht setSymbol:@"rht"];
		
		BNRStockHolding* yhoo = [[BNRStockHolding alloc]init];
		[yhoo setNumberOfShares:432];
		[yhoo setPurchaseSharePrice:15.14];
		[yhoo setCurrentSharePrice:37.00];
		[yhoo setSymbol:@"yhoo"];
		
		BNRPortfolio* porfolio = [[BNRPortfolio alloc]init];
		[porfolio addHolding:aapl];
		[porfolio addHolding:rht];
		[porfolio addHolding:yhoo];
		
		NSArray* top3 = [porfolio topHoldings];
		
		if (top3) {
			for (BNRStockHolding* holding in top3) {
				NSLog(@"%@ has a value of %.2f\n", [holding symbol], [holding valueInDollars]);
			}
		}
	}
	return 0;
}