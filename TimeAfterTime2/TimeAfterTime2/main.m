//
//  main.m
//  TimeAfterTime2
//
//  Created by Geert-Jan Kruijff on 26/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDate *now = [[NSDate alloc] init];
        // *now is a pointer to an object. %p gets the address
        NSLog(@"The new date lives at %p", now);
        // using %@ gets a String representation of the value of the object at the address pointed to
        NSLog(@"The date is %@", now);
        // get the seconds since 1/1/1970, very useful
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %.f seconds since the start of 1970", seconds);
        //
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100.000 seconds it will be %@", later);
        //
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                inUnit:NSMonthCalendarUnit
                                forDate:now];
        NSLog(@"This is day %lu of the month",day);
        //
        NSDateComponents *comps =[[NSDateComponents alloc] init];
        [comps setYear:1970];
        [comps setMonth:10];
        [comps setDay:11];
        [comps setHour:23];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double d = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Number of seconds since I was born %.f", d);
        
    }
    return EXIT_SUCCESS;
}
