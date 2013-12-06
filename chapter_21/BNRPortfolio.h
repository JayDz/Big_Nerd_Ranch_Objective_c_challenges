// Challenge 1, Chapter 21
// jeffreydiaz27@gmail.com
// BNRPortfolio.h

#import <Foundation/Foundation.h>

@class BNRStockHolding;

@interface BNRPortfolio : NSObject
{
	NSMutableArray* _holdings;
}

-(void) addHolding:(BNRStockHolding*) holding;

-(float) currentValue;

@end
