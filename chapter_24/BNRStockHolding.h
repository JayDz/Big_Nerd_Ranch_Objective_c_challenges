// Chapter 20, Challenge 1
// jeffreydiaz27@gmail.com
// BNRStockHolding.h

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

#pragma mark Properties
@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int   numberOfShares;

// I added another property to hold the stock symbol.
@property NSString* symbol;

#pragma mark Public Methods
-(float) costInDollars;
-(float) valueInDollars;

@end