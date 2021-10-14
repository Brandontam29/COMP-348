void printLength(int intArray[])
{
    printf("Length of parameter: %d\n", (int)(sizeof(intArray) / sizeof(intArray[0])));
}