#include <stdio.h>
#include <math.h>
double squareRoot(int nbr);

int main()
{
    int age;
    printf("Enter age\n");
    scanf("%d", &age);
    age = squareRoot(age);
    printf("You will be %d years old in square roots", age);
    return 0;
}

double squareRoot(int nbr)
{
    double output = sqrt(nbr);
    return output;
}