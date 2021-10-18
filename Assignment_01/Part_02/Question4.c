
// --------------------------------------------------------------
// Assignment 1
// Part 2
// Question 4 and 5
// Written by: Valerie Courval 40101337 and  Brandon Tam 40100539
// --------------------------------------------------------------
//

#include <stdio.h>
#include <stdlib.h>
#include "AGGREGATE.h"

#define ARRAYLEN(ar) (int)(sizeof(ar) / (sizeof(ar[0])))
typedef float (*FUNCPTR)(float *, int);

int main()
{
    float array1[] = {8, 9, 10};
    float array2[] = {44, 33, 22, 88, 99, 11, 55, 77, 66};
    const char *funcNames[] = {"min", "max", "sum", "avg", "pseudo_avg"};

    FUNCPTR ptrMin = &min;
    FUNCPTR ptrMax = &max;
    FUNCPTR ptrSum = &sum;
    FUNCPTR prtAvg = &avg;
    FUNCPTR ptrPseudo_Avg = &pseudo_avg;

    FUNCPTR aggregates[] = {*ptrMin, *ptrMax, *ptrSum, *prtAvg, *ptrPseudo_Avg};

    printf("Array 1\n");

    for (int i = 0; i < ARRAYLEN(aggregates); i++)
    {
        float result = (*aggregates[i])(array1, ARRAYLEN(array1));

        printf("%s is %f\n", funcNames[i], result);
    }

    printf("\nArray 2\n");

    for (int i = 0; i < ARRAYLEN(aggregates); i++)
    {
        float result = (*aggregates[i])(array2, ARRAYLEN(array2));
        printf("%s is %f\n", funcNames[i], result);
    }
    return 0;
}
