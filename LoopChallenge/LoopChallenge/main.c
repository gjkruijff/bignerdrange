//
//  main.c
//  LoopChallenge
//
//  Created by Geert-Jan Kruijff on 06/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    for (int i=99; i>0; i=i-3)
    {
        printf("Checking %d\n",i);
        if (i % 5 ==0) printf("We've got one!\n");
    } // end loop
    return 0;
}
