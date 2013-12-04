// Challenge 1, Chapter 18
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

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
		
		NSArray* stocks = @[aapl,rht,yhoo];
		
		for (BNRStockHolding* stock in stocks) {
			float cost = [stock costInDollars];
			float market = [stock valueInDollars];
			
			NSLog(@"Porfolio value of %@ is: %.2f\n", [stock symbol], market - cost);
		}
	}
	return 0;
}