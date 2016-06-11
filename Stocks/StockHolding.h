//
//  StockHolding.h
//  Stocks
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef StockHolding_h
#define StockHolding_h
#endif /* StockHolding_h */

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int   numberOfShares;
}

@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;

- (float) costInDollars; // purchase price * number of shares
- (float) valueInDollars; // current price * number of shares

@end



