//
//  main.m
//  ComputerName
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        NSHost *host = [[NSHost alloc] init];
        NSString *localHostName = [host localizedName];
        
        NSLog(@"Hello %@",localHostName);
        
    }
    return 0;
}
