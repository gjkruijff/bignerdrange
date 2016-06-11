//
//  main.m
//  TimeAfterTime
//
//  Created by Geert-Jan Kruijff on 07/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The new date lives at %@",now);
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970",seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100k seconds it will be %@",later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSCalendarUnitDay
                                        inUnit:NSCalendarUnitMonth
                                        forDate:now];
        NSLog(@"This is day %lu of the month",day);

        NSUInteger hour = [cal ordinalityOfUnit:NSCalendarUnitHour
                                        inUnit:NSCalendarUnitMonth
                                        forDate:now];
        NSLog(@"This is hour %lu of the month",hour);
        
        NSTimeZone *zone = [NSTimeZone defaultTimeZone];
        NSLog(@"This is timezone %@", zone);
        // Boolean isDayLightSaving = [zone isDayLightSavingTime];
        
    }
    return 0;
}
