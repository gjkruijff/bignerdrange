//
//  main.c
//  BMICalc
//
//  Created by Geert-Jan Kruijff on 07/10/15.
//  Copyright (c) 2015 Geert-Jan Kruijff. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMeters;
    float weightInKilos;
} Person; // end struct

float bodyMassIndex (Person p) {
    return p.weightInKilos/(p.heightInMeters * p.heightInMeters);
}


int main(int argc, const char * argv[]) {
    Person person;
    person.weightInKilos = 82.6;
    person.heightInMeters = 1.88;
    printf("Person weighs %.2f kilograms\n", person.weightInKilos);
    printf("Person is %.2f meters tall\n", person.heightInMeters);
    float bmi = bodyMassIndex(person);
    printf("Person has a BMI of %.2f\n",bmi);
    return 0;
}
