//
//  main.m
//  DoubleA
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Name World!");
        
        // Read in a big file into a single string (and hope that it fits)
        NSString *nameString
                = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                            encoding:NSUTF8StringEncoding
                                            error:NULL];
        // Break it into individual items, into an array
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        int count = 0;
        // Go through the array one string at a time
        for (NSString *n in names) {
            // look for the string "aa" in a case-insensitive manner
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
        
            // Was it found?
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
                count++;
            }
        
        } //end for
        NSLog(@"Number of names with AA found: %d",count);
    }
    return 0;
}
