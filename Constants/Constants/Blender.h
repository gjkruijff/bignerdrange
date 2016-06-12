//
//  Blender.h
//  Constants
//
//  Created by Geert-Jan Kruijff on 12/06/16.
//  Copyright © 2016 Geert-Jan Kruijff. All rights reserved.
//

/*
enum BlenderSpeed {
    BlenderSpeedStir = 1,
    BlenderSpeedChop = 2,
    BlenderSpeedLiquify = 5,
    BlenderSpeedPulse = 9,
    BlenderSpeedIceCrush = 15
} // end enum
*/

// You don't need to assign numbers if all you care about is the constants
// Using typedef instead of enum you create types, no need to specify enum anymore

typedef enum {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
} BlenderSpeed;



@interface Blender : NSObject
{
    // because of typedef, no more enum BlenderSpeed
    BlenderSpeed speed;
}

    // because of typedef, no more enum BlenderSpeed
- (void) setSpeed:(BlenderSpeed)x;
@end
