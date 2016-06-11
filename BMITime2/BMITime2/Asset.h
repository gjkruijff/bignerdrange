//
//  Asset.h
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 11/06/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    Employee *holder;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;
@property (strong) Employee *holder;
@end
    