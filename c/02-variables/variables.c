#include <stdio.h>

int main(void) {
    /* Integer types */
    char   c  = 'A';       /* 1 byte: -128 to 127 (or 0 to 255 unsigned) */
    short  s  = 1000;      /* at least 2 bytes */
    int    i  = 42;        /* at least 2 bytes, usually 4 */
    long   l  = 100000L;   /* at least 4 bytes */

    /* Floating-point types */
    float  f  = 3.14f;     /* single precision, ~7 decimal digits */
    double d  = 3.141592653589793; /* double precision, ~15 decimal digits */

    /* Boolean (C99 and later via stdbool.h) */
    _Bool flag = 1;        /* 0 = false, non-zero = true */

    /* Print each variable with its size in bytes */
    printf("char   c  = '%c'  (size: %zu bytes)\n", c,  sizeof(c));
    printf("short  s  = %d    (size: %zu bytes)\n",  s,  sizeof(s));
    printf("int    i  = %d    (size: %zu bytes)\n",  i,  sizeof(i));
    printf("long   l  = %ld   (size: %zu bytes)\n",  l,  sizeof(l));
    printf("float  f  = %.2f  (size: %zu bytes)\n",  f,  sizeof(f));
    printf("double d  = %.15f (size: %zu bytes)\n",  d,  sizeof(d));
    printf("_Bool  flag = %d  (size: %zu bytes)\n",  flag, sizeof(flag));

    return 0;
}
