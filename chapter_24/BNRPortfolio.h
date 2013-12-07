// Challenge 2, Chapter 24
// jeffreydiaz27@gmail.com
//  BNRPortfolio.h

#import <Foundation/Foundation.h>

@class BNRStockHolding;

@interface BNRPortfolio : NSObject

-(void) addHolding:(BNRStockHolding*) holding;
-(void) removeHolding:(BNRStockHolding*) holding;
-(float) currentValue;
-(NSArray*) topHoldings;
-(NSArray*) allHoldings;

@end