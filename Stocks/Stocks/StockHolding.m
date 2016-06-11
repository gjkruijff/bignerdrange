//
//  StockHolding.m
//  Stocks
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize numberOfShares, purchaseSharePrice, currentSharePrice;

- (float) costInDollars
{
    float purchase = [self purchaseSharePrice];
    int   shares   = [self numberOfShares];
    return (purchase * shares);
}

- (float) valueInDollars
{
    float price = [self currentSharePrice];
    int shares  = [self numberOfShares];
    return (price * shares);
}

@end