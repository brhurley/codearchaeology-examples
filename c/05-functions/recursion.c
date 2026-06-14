#include <stdio.h>

/* Recursive factorial: n! = n * (n-1)!, with 0! = 1! = 1 */
unsigned long factorial(int n) {
    if (n <= 1) {
        return 1;                  /* base case stops the recursion */
    }
    return n * factorial(n - 1);   /* recursive case */
}

int main(void) {
    for (int i = 1; i <= 6; i++) {
        printf("%d! = %lu\n", i, factorial(i));
    }
    return 0;
}
