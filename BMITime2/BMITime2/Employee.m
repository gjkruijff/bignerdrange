//
//  Employee.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 30/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    // is assets nil?
    if (!assets) { assets = [[NSMutableArray alloc]init];}
    [assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets) { sum += [a resaleValue]; }
    return sum;
}

- (float) bodyMassIndex
{
    // return 19.0;
 
    // Return a 10% reduced BMI for employees
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}


@end