//-----------------------------------------------------
//Assignment 1
//Part: 2
//Written by: Brandon Tam 40100539
//-----------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#define ARRAYLEN(ar) (int)(sizeof(ar) / (sizeof(ar[0])))

float min(float arr[], int size);
float max(float arr[], int size);
float sum(float arr[], int size);
float avg(float arr[], int size);
float pseudo_avg(float arr[], int size);

int main()
{
    float arr1[5] = {11.0, 2.0, 3.0, 4.0, 5.0};

    int size1 = ARRAYLEN(arr1);
    float min1 = min(arr1, size1);
    float max1 = max(arr1, size1);
    float sum1 = sum(arr1, size1);
    float avg1 = avg(arr1, size1);
    float pseudo_avg1 = pseudo_avg(arr1, size1);

    printf("Min %f\n", min1);
    printf("Max %f\n", max1);
    printf("Sum %f\n", sum1);
    printf("Avg %f\n", avg1);
    printf("Pseudo Avg %f\n", pseudo_avg1);

    return 0;
}

float min(float arr[], int size)
{
    float min = arr[0];

    for (int i = 0; i < size; i++)
    {
        printf("min step %i => %f %d\n", i, arr[i], size);
        if (arr[i + 1] < arr[i])
        {
            min = arr[i + 1];
        }
    }
    return min;
}

float max(float arr[], int size)
{
    float max = arr[0];
    for (int i = 0; i < size; i++)
    {
        printf("max step %i => %f\n", i, arr[i]);

        if (arr[i + 1] > arr[i])
        {
            max = arr[i + 1];
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
