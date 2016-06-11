//
//  StockHolding.m
//  Stocks2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float) costInDollars
{
    float p = [self purchaseSharePrice];
    int n = [self numberOfShares];
    return n * p;
}
- (float) valueInDollars
{
    float c = [self currentSharePrice];
    int n = [self numberOfShares];
    return n * c;
}

@end 