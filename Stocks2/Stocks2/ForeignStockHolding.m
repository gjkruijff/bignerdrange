//
//  ForeignStockHolding.m
//  Stocks2
//
//  Created by Geert-Jan Kruijff on 30/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

- (float) costInDollars
{
    float cnv = [self conversionRate];
    float p = [self purchaseSharePrice];
    int n = [self numberOfShares];
    return n * p * cnv;
}
- (float) valueInDollars
{
    float cnv = [self conversionRate];
    float c = [self currentSharePrice];
    int n = [self numberOfShares];
    return n * c * cnv;
}
@end