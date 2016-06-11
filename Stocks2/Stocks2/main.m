//
//  main.m
//  Stocks2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Stocks World!");
        
        NSMutableArray *portfolio = [[NSMutableArray alloc] init];
        
        // Holding 1
        StockHolding *holding1 = [[StockHolding alloc] init];
        [holding1 setPurchaseSharePrice:2.30];
        [holding1 setNumberOfShares:40];
        [holding1 setCurrentSharePrice:4.50];
        
        [portfolio addObject:holding1];
        
        // Holding 2
        StockHolding *holding2 = [[StockHolding alloc] init];
        [holding2 setPurchaseSharePrice:12.19];
        [holding2 setCurrentSharePrice:10.56];
        [holding2 setNumberOfShares:90];
        
        [portfolio addObject:holding2];
        
        // Holding 3
        StockHolding *holding3 = [[StockHolding alloc] init];
        [holding3 setPurchaseSharePrice:45.10];
        [holding3 setCurrentSharePrice:49.51];
        [holding3 setNumberOfShares:210];
        
        [portfolio addObject:holding3];
        
        // Holding 4
        ForeignStockHolding *holding4 = [[ForeignStockHolding alloc] init];
        [holding4 setPurchaseSharePrice:50.0];
        [holding4 setCurrentSharePrice:65.0];
        [holding4 setNumberOfShares:350];
        [holding4 setConversionRate:1.32];
        
        [portfolio addObject:holding4];

        
        float totalValue = 0;
        
        // Establish the portfolio value
        for (StockHolding *s in portfolio) {
            float valueDifference = [s valueInDollars] - [s costInDollars];
            NSLog(@"For (%d, %.2f) now at %.2f the value is %.2f, difference %.2f",
                [s numberOfShares], [s purchaseSharePrice], [s currentSharePrice], [s valueInDollars], valueDifference
                );
            totalValue += valueDifference;
        
        } // end for
        
        NSLog(@"Total portfolio value is %f", totalValue);
        
        
        
    }
    return 0;
}
