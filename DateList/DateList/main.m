//
//  main.m
//  DateList
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Create an array containing all three, nil terminates the list
        // NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        // Create an empty array
        NSMutableArray *dateList = [NSMutableArray array];
        
        // Add the objects
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        [dateList addObject:yesterday];
        
        // put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        
        // How many dates are there?
        NSLog(@"There are %lu dates",[dateList count]);
        
        // Loop
        /** NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is the date at %u: %@", i, d);
        } // end for */
        
        int i=0;
        for (NSDate *d in dateList) {
            NSLog(@"Here is the date at %u: %@",i,d);
            i++;
        } // end for

        // remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);


    }
    return 0;
}
