//
//  main.m
//  IsDaylightSavingsTime
//
//  Created by Geert-Jan Kruijff on 26/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        BOOL value = [timeZone isDaylightSavingTime];
        NSLog(@"Whether it is currently daylight saving time %hhd",value);
        
    }
    return 0;
}
