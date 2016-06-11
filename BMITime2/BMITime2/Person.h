//
//  Person.h
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 27/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person ingerits all the instance variables
// and methods defined by the class NSObject

@interface Person : NSObject
{
    // it has two instance variables
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos; 

// This method calculates the Body Mass Index
- (float)bodyMassIndex;
@end

