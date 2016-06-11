//
//  main.m
//  Groceries2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Groceries World!");
        
        // Create the list
        NSMutableArray *list = [[NSMutableArray alloc] init];
        
        // Add a couple of items to the list
        [list addObject:@"coffee"];
        [list addObject:@"tea"];
        [list addObject:@"cookies"];
        
        // Print out the list
        for (NSString *item in list) {
            NSLog(item);
        }
        
        
        
    }
    return 0;
}
