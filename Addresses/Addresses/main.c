//
//  main.c
//  Addresses
//
//  Created by Geert-Jan Kruijff on 07/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n",addressOfI);
    printf("The int stored at addressOfI has value %d\n", *addressOfI);
    *addressOfI = 89;
    printf("Now the int stored at addressOfI has value %d\n", i);
    printf("An int is %zu bytes\n",sizeof(float));
    // Next, use addressOfI to get the size of the pointer (-> 8)
    // Use *addressOfI to get the size of the value (int -> 4)
    printf("A pointer is %zu bytes\n",sizeof(addressOfI));
    return 0;
}
