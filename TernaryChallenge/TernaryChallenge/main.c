//
//  main.c
//  TernaryChallenge
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {

    int i = 20;
    int j = 25;
    
    int k = (i > j ) ? 10 : 5 ;
    
    if ( 5 < j - k) {
        printf("the first expression is true");
    } else if (j > i) {
        printf("the second expression is true");
    } else {
        printf("neither expression is true");
    }

    return 0;
}
