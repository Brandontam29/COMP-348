//-----------------------------------------------------
//Assignment 1
//Part: 2
//Written by: Brandon Tam 40100539 and Valerie Courval
//-----------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

float min(float arr[], int size)
{
    if (size < 0)
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }
    float min = arr[0];

    for (int i = 0; i < size; i++)
    {
        if (!isdigit(arr[i]))
        {
            printf("FATAL ERROR in line %d\n", __LINE__);
        }
        if (min > arr[i])
        {
            min = arr[i];
        }
    }
    return min;
}

float max(float arr[], int size)
{
    if (size < 0)
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }
    float max = arr[0];
    for (int i = 0; i < size - 1; i++)
    {
        if (!isdigit(arr[i]))
        {
            printf("FATAL ERROR in line %d\n", __LINE__);
        }
        if (max < arr[i])
        {
            max = arr[i];
        }
    }
    return max;
}

float sum(float arr[], int size)
{
    if (size < 0)
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }
    float sum = 0;
    for (int i = 0; i < size; i++)
    {
        if (!isdigit(arr[i]))
        {
            printf("FATAL ERROR in line %d\n", __LINE__);
        }
        sum += arr[i];
    }
    return sum;
}

float avg(float arr[], int size)
{
    if (size < 0)
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }
    float avg = sum(arr, size) / size;
    return avg;
}

float pseudo_avg(float arr[], int size)
{
    if (size < 0)
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }

    int length = size;
    if (!isdigit(arr[0]) || !isdigit(arr[length - 1]))
    {
        printf("FATAL ERROR in line %d\n", __LINE__);
    }

    float pseudo_avg = (arr[0] + arr[length - 1]) / 2;
    return pseudo_avg;
}
