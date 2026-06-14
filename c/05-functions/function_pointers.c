#include <stdio.h>

int add(int a, int b)      { return a + b; }
int subtract(int a, int b) { return a - b; }
int multiply(int a, int b) { return a * b; }

/* op is a pointer to a function taking two ints and returning an int */
int apply(int (*op)(int, int), int x, int y) {
    return op(x, y);
}

int main(void) {
    printf("apply(add, 6, 4)      = %d\n", apply(add, 6, 4));
    printf("apply(subtract, 6, 4) = %d\n", apply(subtract, 6, 4));
    printf("apply(multiply, 6, 4) = %d\n", apply(multiply, 6, 4));
    return 0;
}
