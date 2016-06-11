//
//  main.c
//  Triangle
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float remainingAngle(float angleA, float angleB)
{
    return 180 - (angleA+angleB);
}


int main(int argc, const char * argv[]) {

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n",angleC);
    return EXIT_SUCCESS;
}
