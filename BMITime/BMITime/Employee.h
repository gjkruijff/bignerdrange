//
//  Employee.h
//  BMITime
//
//  Created by Geert-Jan Kruijff on 26/10/15.
//  Copyright © 2015 Geert-Jan Kruijff. All rights reserved.
//

#ifndef Employee_h
#define Employee_h
#endif /* Employee_h */

#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}
@property int employeeID;
- (void) addAssetsObject:(Asset *)a;
- (unsigned int) valueOfAssets;
@end
