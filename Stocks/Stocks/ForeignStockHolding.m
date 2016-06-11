//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) costInDollars {
    float purchase = [self purchaseSharePrice];
    int   shares   = [self numberOfShares];
    float nonConvertedCost = (purchase * shares);
    return [self conversionRate] * nonConvertedCost;
} // end costInDollars
- (float) valueInDollars {
    float price = [self currentSharePrice];
    int shares  = [self numberOfShares];
    float nonConvertedValue = (price * shares);
    return [self conversionRate] * nonConvertedValue;
} // end valueInDollars

@end