#include <stdio.h>
#include <stdlib.h>

int main()
{
    char grade = 'A';
    printf("Enter your letter grade\n");
    fgets(grade, 0, stdin);

    switch (grade)
    {
    case 'A':
        printf("Your %c is in the top 10%%", grade);
        break;
    case 'B':
        printf("Your %c is in the top 20%%", grade);
        break;
    case 'C':
        printf("Your %c is in the bottom 71%%", grade);
        break;
    case 'D':
        printf("Your %c is in the top 30%%", grade);
        break;
    case 'E':
        printf("Your %c is in the bottom 10%%", grade);
        break;
    default:
        printf("Your %c is in the bottom 1%%", grade);
        break;
    }
    return 0;
}