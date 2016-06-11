//
//  Employee.h
//  BMITime2
//
//  Created by Geert-Jan Kruijff on 30/05/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void) addAssetsObject: (Asset *)a;
- (unsigned int)valueOfAssets;

@end 
