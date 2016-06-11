//
//  ForeignStockHolding.h
//  Stocks2
//
//  Created by Geert-Jan Kruijff on 30/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;
@end