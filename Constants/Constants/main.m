//
//  main.m
//  Constants
//
//  Created by Geert-Jan Kruijff on 12/06/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, Constants World!");
        
        // In literal NSString, use \u for unicode characters
        NSLog(@"\u03c0 is %f", M_PI);
        
        // Next, use MAX -- MAX is a #define'd macro -- a ternary statement, i.e. not a function
        NSLog(@"%d is larger", MAX(10,12));
        
        // Use the user's locale
        NSLocale *here = [NSLocale currentLocale];
        // NSString *currency = [here objectForKey:@"currency"];
        // Instead of using the string value for the key, use a constant! Finds errors at compile time
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
        
        
        
    }
    return 0;
}
