#include <stdio.h>

/* Function prototypes (declarations) */
int add(int a, int b);
double average(int a, int b);
void greet(const char *name);

int main(void) {
    int sum = add(7, 5);
    printf("7 + 5 = %d\n", sum);
    printf("Average of 7 and 5 = %.1f\n", average(7, 5));
    greet("Archaeologist");
    return 0;
}

/* Function definitions */
int add(int a, int b) {
    return a + b;
}

double average(int a, int b) {
    return (a + b) / 2.0;   /* 2.0 forces floating-point division */
}

void greet(const char *name) {
    printf("Hello, %s!\n", name);   /* void: returns nothing */
}
