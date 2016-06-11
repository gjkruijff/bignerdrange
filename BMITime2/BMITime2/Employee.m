//
//  Employee.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 30/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

@implementation Employee
@synthesize employeeID;

- (float) bodyMassIndex
{
    // return 19.0;
 
    // Return a 10% reduced BMI for employees
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end