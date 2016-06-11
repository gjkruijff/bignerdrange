//
//  Person.h
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#import <Foundation/Foundation.h>


#ifndef Person_h
#define Person_h
#endif /* Person_h */

// The class Person inherits all the instance variables
// and methods defined by the class NSObject

@interface Person : NSObject
{
    // It has two instance variables
    float heightInMeters;
    int weightInKilos;
}

// Use properties to automatically indicate the instance variable signatures
@property float heightInMeters;
@property int weightInKilos; 


// This method calculates the Body Mass Index
- (float) bodyMassIndex;
@end

