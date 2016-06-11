//
//  main.m
//  properNameComparison
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Read in a file as a huge String; ignore possibility of errors
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                            encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                            encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // Break the words into an array of Strings
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Go through the words array one string at a time
        for (NSString *w in words) {
            //Look for the word in the name string in a case-insensitive manner
            NSRange r = [nameString rangeOfString:w options:NSCaseInsensitiveSearch];
            // Was it found?
            if (r.location != NSNotFound) {
                NSLog(@"Name: %@", w);
            } else {
                NSLog(@"Word: %@",w);
            }
        } // end for
        
    }
    return 0;
}
