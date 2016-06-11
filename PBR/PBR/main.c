//
//  main.c
//  PBR
//
//  Created by Geert-Jan Kruijff on 07/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>
#include <math.h>


void cartesianToPolar (float x, float y, double *rPtr, double *thetaPtr)
{
    // Safety checks
    // Is rPtr non-NULL?
    if (rPtr) {
        // Store the radius in the supplied address
        *rPtr = sqrt(x*x + y*y);
    }
    // Is thetaPtr non-NULL?
    if (!thetaPtr) {
        // Skip the rest of this function
        return;
    }
    
    // Calculate theta
    float theta;
    if (x == 0.0) {
       if (y == 0.0) {
            theta = 0.0; // technically, undefined
        } else if (y > 0) {
            theta = M_PI_2;
        } else {
            theta = -M_PI_2;
        } // end if..else on y
    } else {
        theta = atan(y/x);
    } // end if..else on x
    // Store theta in the supplied address
    *thetaPtr = theta;
} // end function


int main(int argc, const char * argv[]) {

    double pi = 3.14;
    double integerPart;
    double fractionPart;
    double *integerPartAddress = &integerPart;

    // Pass the address of the integer part as an argument
    // fractionPart = modf(pi, &integerPart);
    fractionPart = modf(pi, integerPartAddress);
    
    // Find the value stored in integerPart
    printf("integerPart= %.0f, fractionPart = %.2f\n", integerPart, fractionPart);

    double x = 3.0;
    double y = 4.0;
    double radius;
    double theta;
    
    cartesianToPolar(x,y,&radius, &theta);
    printf("(%.2f,%.2f) becomes (%.2f rad, %.2f)\n", x,y,radius,theta);

    return 0;
}
