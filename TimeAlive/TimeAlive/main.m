//
//  main.m
//  TimeAlive
//
//  Created by Geert-Jan Kruijff on 07/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1970];
        [comps setMonth:10];
        [comps setDay:11];
        [comps setHour:23];
        [comps setMinute:10];
        [comps setSecond:0];

        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        double nowInSecs = [now timeIntervalSince1970];
        double birthInSecs = [dateOfBirth timeIntervalSince1970];
        
        double diffInSecs = nowInSecs-birthInSecs;
        double diffInSecsToDays = diffInSecs / (float)(24*60*60);
        NSLog(@"Difference in days between now and date of birth is %f", diffInSecsToDays);
        NSLog(@"Difference in years between now and date of birth is %f", diffInSecsToDays/(float)(365));
        NSLog(@"Hello, World!");
    }
    return 0;
}
