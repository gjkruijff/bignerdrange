//
//  main.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Person World!");
        
        // Create an instance of a person
        Employee *person = [[Employee alloc] init];
        
        // Give the instance variables interesting values
        [person setHeightInMeters:1.88];
        [person setWeightInKilos:84];
        [person setEmployeeID:15];
        
        // Call the body mass index method
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d with (%d, %.2f) has bmi of %.2f", [person employeeID], [person weightInKilos], [person heightInMeters], bmi);
        
    }
    return 0;
}
