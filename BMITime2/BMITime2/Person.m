//
//  Person.m
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float) bodyMassIndex
{
    float h = [self heightInMeters];
    float w = [self weightInKilos];
    return w / (h * h);
}

@end
