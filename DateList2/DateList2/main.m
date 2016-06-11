//
//  main.m
//  DateList2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      // Create three NSDate objects
      NSDate *now = [NSDate date];
      NSDate *tomorrow = [now dateByAddingTimeInterval:24.0*60.0*60.0];
      NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
      
      // Create an array containing all three (nil terminates the list)
      // NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
      
      NSMutableArray *dateList = [[NSMutableArray alloc] init];
      
      // Add the dates to the datelist
      [dateList addObject:now];
      [dateList addObject:tomorrow];
      [dateList insertObject:yesterday atIndex:0];
      
      // How many dates are there?
      NSLog(@"There are %lu dates", [dateList count]);
      
      // Print the whole array
      for (NSDate *d in dateList) {
        NSLog(@"Here is a date: %@", d);
      } // end for

      // Remove yesterday
      [dateList removeObjectAtIndex:0];
      NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);



      
    }
    return 0;
}
