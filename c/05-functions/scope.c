#include <stdio.h>

void try_double(int n) {
    n = n * 2;   /* modifies only the local copy */
    printf("Inside try_double: n = %d\n", n);
}

void really_double(int *n) {
    *n = *n * 2; /* dereference: modifies the caller's variable */
}

int main(void) {
    int value = 10;

    try_double(value);
    printf("After try_double:   value = %d\n", value);

    really_double(&value);   /* &value is the address of value */
    printf("After really_double: value = %d\n", value);

    return 0;
}
