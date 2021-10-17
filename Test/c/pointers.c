#include <stdio.h>

int a(int x);

int main()
{
    int (*ptr)(int);
    ptr = &a;
    int (*pointers[1])(int) = {&a};
    printf("a: %d\n", sizeof(*pointers) / sizeof(pointers[0]));
    printf("a: %d\n", a(2));
    printf("a: %d\n", (*ptr)(2));

    printf("a: %d\n", (*pointers[0])(9));
    printf("a: %d\n", (*ptr)(9));

    printf("a: %d\n", a(11));
    printf("a: %d\n", (*ptr)(11));
    return 0;
}
int a(int x)
{
    return x;
}