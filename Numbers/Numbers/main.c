//
//  main.c
//  Numbers
//
//  Created by Geert-Jan Kruijff on 06/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float radToDeg (float rad)
{
    return (180 / M_PI) * rad;
}

int main(int argc, const char * argv[]) {

    printf("3 * 3 + 5 * 2 = %d\n", 3*3+5*2);
    printf("11 / 3 = %d remainder of %d\n", 11 / 3, 11 % 3);
    printf("11 / 3.0 = %f\n", 11 / (float)3);
    printf("The absolute value of -5 is %d\n", abs(-5));

    float radians = 1;
    float degrees = radToDeg(radians);
    printf("%.3f radians is %.3f degrees\n",radians, degrees);
    printf("The sine of %.3f radians is %.3f\n", radians, sin((double)radians));

    return 0;
}
