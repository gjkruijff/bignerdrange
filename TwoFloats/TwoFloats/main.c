//
//  main.c
//  TwoFloats
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // Create two floats and assign a value to each
    float var1 = 10.0;
    float var2 = 12.0;
    
    // Create a double as the sum of the two floats
    double sum = var1+var2;
    
    // Log the result to the user
    printf("The sum of the floats is %f.\n",sum);
    
    
    return 0;
}
