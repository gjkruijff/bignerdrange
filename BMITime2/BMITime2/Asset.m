//
//  Asset.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 11/06/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void) dealloc
{
    NSLog(@"deallocating %@", self); 
}
@end