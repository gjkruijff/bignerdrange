//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#ifndef ForeignStockHolding_h
#define ForeignStockHolding_h
#endif /* ForeignStockHolding_h */

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;
@end