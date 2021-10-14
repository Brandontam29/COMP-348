#include <stdio.h>

int main()
{
    char name[10];
    double timeLapse = 4.0;
    printf("Enter name(max 10 characters)\n");
    fgets(name, 10, stdin);
    printf("Hello %s \n", name);
    return 0;
}
