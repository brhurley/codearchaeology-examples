#include <stdio.h>

int main(void) {
    int value = 42;
    int *p = &value;       /* & takes the address of value */

    printf("value          = %d\n", value);
    printf("*p (deref)     = %d\n", *p);

    *p = 100;              /* write through the pointer */
    printf("value after *p = 100 -> %d\n", value);

    /* Pointer arithmetic moves by the size of the pointed-to type */
    int nums[3] = {10, 20, 30};
    int *q = nums;
    printf("q[0] = %d, *(q+1) = %d, *(q+2) = %d\n",
           q[0], *(q + 1), *(q + 2));

    return 0;
}
