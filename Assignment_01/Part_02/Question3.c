//-----------------------------------------------------
//Assignment 1
//Part: 2
//Written by: Brandon Tam 40100539
//-----------------------------------------------------

#include <stdio.h>

int main()
{
    int age;
    double timeLapse = 4.0;
    printf("Enter age\n");
    scanf("%d", &age);
    age += timeLapse;
    printf("You will be %d years old in %f years", age, timeLapse);
    return 0;
}
