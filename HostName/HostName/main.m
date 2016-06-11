//
//  main.m
//  HostName
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        NSHost *host = [NSHost currentHost];
        NSString *hostName = [host localizedName];
        NSLog(hostName);
        
    }
    return 0;
}
