//
//  main.m
//  Stocks
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Wall Street World!");
        
        // Create an array for the portfolio
        NSMutableArray *portfolio = [[NSMutableArray alloc] init];
        
        // Create a couple of portfolio items
        StockHolding *item1 = [[StockHolding alloc] init];
        [item1 setPurchaseSharePrice:2.30];
        [item1 setCurrentSharePrice:5.40];
        [item1 setNumberOfShares:40];
        
        StockHolding *item2 = [[StockHolding alloc] init];
        [item2 setPurchaseSharePrice:12.19];
        [item2 setCurrentSharePrice:10.56];
        [item2 setNumberOfShares:90];

        StockHolding *item3 = [[StockHolding alloc] init];
        [item3 setPurchaseSharePrice:45.10];
        [item3 setCurrentSharePrice:49.51];
        [item3 setNumberOfShares:210];
        
        // Add the objects to the portfolio
        [portfolio addObject:item1];
        [portfolio addObject:item2];
        [portfolio addObject:item3];
        
        ForeignStockHolding *item4 = [[ForeignStockHolding alloc] init];
        [item4 setPurchaseSharePrice:45.10];
        [item4 setCurrentSharePrice:49.51];
        [item4 setNumberOfShares:210];
        [item4 setConversionRate:1.35];

        // Add the foreign stock to the portfolio
        [portfolio addObject:item4];
        
        
        float totalProfit = 0;
        // Cycle over the objects and get the value
        for (StockHolding *s in portfolio)
        {
            // Get the item values and compute the resulting profit
            float itemCost = [s costInDollars];
            float itemValue = [s valueInDollars];
            float profit = (itemValue-itemCost);
            // Adjust how to tag the profit as loss (=<0) or profit (>0)
            NSString *tag = (profit > 0) ? @"profit" : @"loss";
            // Print the contextualized statement
            NSLog (@"Item cost %.2f and value %.2f yield a %@ of %.2f",
                    itemCost, itemValue, tag, profit);
            // Update the total profit
            totalProfit += profit;
        } // end for
        
        NSLog(@"Total profit is %.2f", totalProfit);
        
        
        
    }
    return 0;
}
