//
//  main.m
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a person
        Employee *person = [[Employee alloc] init];
        [person setWeightInKilos:82];
        [person setHeightInMeters:1.88];
        [person setEmployeeID:15];
        
        // Compute the BMI
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee ID %u (%d, %.2f) has BMI of %.2f",
            [person employeeID], [person weightInKilos], [person heightInMeters], bmi);
        
        
    }
    return 0;
}
