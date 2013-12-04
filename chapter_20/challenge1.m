// Challenge 1, Chapter 20
// jeffreydiaz27@gmail.com

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		const float yuanFXRate = 6.09f;
		
		BNRForeignStockHolding* aapl = [[BNRForeignStockHolding alloc]init];
		// wishful thinking..
		[aapl setNumberOfShares:1000];
		[aapl setPurchaseSharePrice:6.50];
		[aapl setCurrentSharePrice:540.0];
		[aapl setSymbol:@"aapl"];
		[aapl setConversionRate:yuanFXRate];
		
		BNRForeignStockHolding* rht = [[BNRForeignStockHolding alloc]init];
		[rht setNumberOfShares:40];
		[rht setPurchaseSharePrice:43.54];
		[rht setCurrentSharePrice:46.50];
		[rht setSymbol:@"rht"];
		[rht setConversionRate:yuanFXRate];
		
		BNRForeignStockHolding* yhoo = [[BNRForeignStockHolding alloc]init];
		[yhoo setNumberOfShares:432];
		[yhoo setPurchaseSharePrice:15.14];
		[yhoo setCurrentSharePrice:37.00];
		[yhoo setSymbol:@"yhoo"];
		[yhoo setConversionRate:yuanFXRate];
		
		NSArray* stocks = @[aapl,rht,yhoo];
		
		for (BNRForeignStockHolding* stock in stocks) {
			float cost = [stock costInDollars];
			float market = [stock valueInDollars];
			
			NSLog(@"Porfolio value (YUAN denominated) of %@ is: %.2f\n", [stock symbol], market - cost);
		}
	}
	return 0;
}