//
//  main.c
//  ClassCertificates
//
//  Created by Geert-Jan Kruijff on 05/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratulateStudent (char *student, char *course, int numDays)
{
    printf("%s has done as much %s programming as I could fit into %d days.\n",
            student, course, numDays);
}


int main(int argc, const char * argv[]) {

    congratulateStudent("Mark", "Cocoa", 5);
    congratulateStudent("Bo", "Objective-C", 2);
    congratulateStudent("Mike", "Python", 5);
    congratulateStudent("Ted", "iOS", 5);

    return 0;
}
