//
//  main.m
//  NameComparison
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, Word Comparison World!");
        
        // Read in the words file
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                         error:NULL];
        
        // Create the WORDS array
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Read in the proper names file
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                         error:NULL];
        
        // Create the NAMES array
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Create the mutable ARRAY for containing names that are words
        NSMutableArray *nameWords = [[NSMutableArray alloc] init];
        
        // Cycle over each name, check whether it is a regular word
        for (NSString *n in names) {
            for (NSString *w in words) {
                if ([n caseInsensitiveCompare:w] == NSOrderedSame) {
                    [nameWords addObject:w];
                }
            } // end for over WORDS
        } // end for over NAMES
        
        NSUInteger namesCount = [names count];
        NSUInteger wordCount = [words count];
        NSUInteger nameWordCount = [nameWords count];
        
        NSLog(@"Out of %d names and %d we have %d that are words", namesCount, wordCount, nameWordCount);
        
        
        
    }
    return 0;
}
