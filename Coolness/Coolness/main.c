//
//  main.c
//  Coolness
//
//  Created by Geert-Jan Kruijff on 06/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int i;
    for (i=0; i < 12; i++) {
        if (i % 3 == 0) continue;
        printf("Checking i = %d\n",i);        
        if (i+90 == i*i) break;
    } // end loop
    printf("The answer is %d\n",i);


    return 0;
}
