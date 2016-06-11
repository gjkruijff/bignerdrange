//
//  Asset.h
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#ifndef Asset_h
#define Asset_h
#endif /* Asset_h */

#import <Foundation/Foundation.h>

@interface Asset:NSObject
{
    NSString *label;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@end 