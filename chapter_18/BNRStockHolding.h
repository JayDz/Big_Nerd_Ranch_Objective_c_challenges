// Chapter 18, Challenge 1
// jeffreydiaz27@gmail.com
// BNRStockHolding.h

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

#pragma mark Properties
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int   numberOfShares;

// I added another property to hold the stock symbol.
@property NSString* symbol;

#pragma mark Public Methods
-(float) costInDollars;
-(float) valueInDollars;

@end