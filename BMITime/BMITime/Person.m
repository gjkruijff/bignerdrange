//
//  Person.m
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import "Person.h"

@implementation Person

// Synthesize the setter, accessor methods for the instance variables
@synthesize heightInMeters, weightInKilos;

// Define the computation method(s)
- (float) bodyMassIndex {
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
} // end bodyMassIndex

@end
