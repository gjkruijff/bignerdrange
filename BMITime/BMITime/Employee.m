//
//  Employee.m
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

@implementation Employee
@synthesize employeeID;

- (void) addAssetsObject: (Asset *)a
{
    // Is assets nil?
    if (!assets) {
        // Create the array
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}
- (unsigned int) valueOfAssets
{
    unsigned int totalValue = 0;
    for (Asset *a in assets) {
        totalValue += [a resaleValue];
    }
    return totalValue;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeID], [self valueOfAssets]];
}
- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
