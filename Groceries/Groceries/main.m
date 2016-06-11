//
//  main.m
//  Groceries
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"GROCERIES LIST");
        
        // Create the array to serve as list
        NSMutableArray *groceriesList = [NSMutableArray array];
        
        // Create the individual grocery items
        NSString *item1 = @"Wasabi Rucola";
        NSString *item2 = @"Avocado";
        NSString *item3 = @"Osseworst";
        
        // Add the individual items to the list
        [groceriesList addObject:item1];
        [groceriesList addObject:item2];
        [groceriesList addObject:item3];
        
        // Print all the items
        int i = 1;
        for (NSString *item in groceriesList) {
            NSLog(@"%u: %@", i, item);
            i++;
        } // end for
        
        
    }
    return 0;
}
