#include <stdio.h>

int main()
{
    char name[10];
    printf("Enter name (max 10 characters)\n");
    fgets(name, 10, stdin);

    if (name[7])
    {
        printf("Your name is at least 7 characters long \n");
    }
    else if (!name[4])
    {
        printf("Your name is less than 3 characters long \n");
    }
    else
    {
        printf("Your name is between 4 and 6 characters long \n");
    }

    printf("Hello %s \n", name);
    return 0;
}
