//
//  main.c
//  BeerSong
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

void singTheSong (int numberOfBottles)
{
    if (numberOfBottles == 0)
    {
        printf("There are simply no more bottles of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n",
            numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n",
            numberOfBottles);
        singTheSong(oneFewer);
        printf("Put a bottle in the recycling bin, %d empty bottles in the bin.\n", numberOfBottles);
    }
}


int main(int argc, const char * argv[]) {
  
    singTheSong(99);
    return 0;
}
