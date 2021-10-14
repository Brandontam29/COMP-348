//-----------------------------------------------------
//Assignment 1
//Part: 2
//Written by: Brandon Tam 40100539
//-----------------------------------------------------

#include <stdio.h>
#include <stdlib.h>

float min(float arr[], int size)
{
    float min = arr[0];

    for (int i = 0; i < size; i++)
    {
        if (min > arr[i])
        {
            min = arr[i];
        }
    }
    return min;
}

float max(float arr[], int size)
{
    float max = arr[0];
    for (int i = 0; i < size - 1; i++)
    {
        if (max < arr[i])
        {
            max = arr[i];
        }
    }
    return max;
}

float sum(float arr[], int size)
{
    float sum = 0;
    for (int i = 0; i < size; i++)
    {
        sum += arr[i];
    }
    return sum;
}

float avg(float arr[], int size)
{
    float avg = sum(arr, size) / size;
    return avg;
}

float pseudo_avg(float arr[], int size)
{
    int length = size;
    float pseudo_avg = (arr[0] + arr[length - 1]) / 2;
    return pseudo_avg;
}
