//
//  main.c
//  Turkey
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    // Declare the variable called 'weight' of type float
    float weight;
    
    // Put a number in that variable
    weight = 14.2;
    
    // Log it to the user
    printf("The turkey weighs %f.\n",weight);
    
    // Declare another variable of type float
    float cookingTime;
    
    // Compute the cooking time and store it in the variable
    cookingTime = 15.0 + 15.0*weight;
    
    // Log that to the user
    printf("Cook it for %f minutes.\n",cookingTime);
    
    // End this function and indicate success
    return 0;
}
