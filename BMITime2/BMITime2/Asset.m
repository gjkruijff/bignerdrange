//
//  Asset.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 11/06/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *) description
{
    // is hlder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d assigned to %@>",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
    }
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self); 
}
@end