//
//  main.c
//  Degrees
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a global variable
float lastTemperature;


float fahrenheitFromCelsius (float cel)
{
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32;
    printf("%f Celsius is %f Fahrenheit.\n",cel, fahr);
    return fahr;
}


int main(int argc, const char * argv[]) {

    float freezeInC = 100;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water boils at %f degrees Fahrenheit.\n",freezeInF);
    printf("The last temperature converted was %f.\n",lastTemperature);

    return EXIT_SUCCESS;
}
