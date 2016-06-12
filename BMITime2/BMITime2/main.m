//
//  main.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Person World!");
        
        
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        for (int i=0; i<10; i++) {
            Employee *person = [[Employee alloc] init];
        
            // Give the instance variables interesting values
            [person setHeightInMeters:1.88 - i/10.0];
            [person setWeightInKilos:80+i];
            [person setEmployeeID:i];

            [employees addObject:person];
        } // end for
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        // Create 10 assets
        for (int i=0; i < 10; i++) {
            // Create an asset
            Asset *asset = [[Asset alloc]init];
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            // Assign the asset to the random employee
            [randomEmployee addAssetsObject:asset];
            // Add the asset to the asset array
            [allAssets addObject:asset];
        } // end for
        
        // Filter the employees by asset value. If the same value, sort by employeeID
        
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei  = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects: voa, ei, nil]];
        
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"All assets: %@", allAssets);
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"To be reclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        
        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;
    }
    sleep(100); 
    return 0;
}
