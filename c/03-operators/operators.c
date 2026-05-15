#include <stdio.h>

int main(void) {
    /* Arithmetic operators on integers */
    int a = 17;
    int b = 5;
    printf("a + b = %d\n", a + b);
    printf("a - b = %d\n", a - b);
    printf("a * b = %d\n", a * b);
    printf("a / b = %d (integer division truncates)\n", a / b);
    printf("a %% b = %d (modulus / remainder)\n", a % b);

    /* Floating-point division behaves differently */
    double x = 17.0;
    double y = 5.0;
    printf("x / y = %.2f\n", x / y);

    /* Comparison operators yield 1 (true) or 0 (false) */
    printf("a == b: %d\n", a == b);
    printf("a != b: %d\n", a != b);
    printf("a >  b: %d\n", a > b);
    printf("a <  b: %d\n", a < b);

    /* Logical operators: any non-zero value is true */
    int t = 1, f = 0;
    printf("t && f: %d\n", t && f);
    printf("t || f: %d\n", t || f);
    printf("!t    : %d\n", !t);

    /* Bitwise operators work on each bit of an integer */
    unsigned int m = 0xF0;  /* 11110000 */
    unsigned int n = 0x0F;  /* 00001111 */
    printf("m & n  = %u\n", m & n);
    printf("m | n  = %u\n", m | n);
    printf("m ^ n  = %u\n", m ^ n);
    printf("n << 4 = %u\n", n << 4);
    printf("m >> 4 = %u\n", m >> 4);

    /* Compound assignment operators */
    int c = 10;
    c += 5; printf("c += 5  -> %d\n", c);
    c -= 3; printf("c -= 3  -> %d\n", c);
    c *= 2; printf("c *= 2  -> %d\n", c);
    c /= 4; printf("c /= 4  -> %d\n", c);

    /* Increment / decrement: postfix vs prefix */
    int i = 5;
    printf("i++ returns %d ", i++);
    printf("(i is now %d)\n", i);
    printf("++i returns %d\n", ++i);

    /* Ternary conditional operator */
    int max = (a > b) ? a : b;
    printf("max(a, b) = %d\n", max);

    /* Operator precedence: * binds tighter than + */
    printf("2 + 3 * 4   = %d\n", 2 + 3 * 4);
    printf("(2 + 3) * 4 = %d\n", (2 + 3) * 4);

    /* sizeof is a compile-time operator, not a function */
    printf("sizeof(int)    = %zu bytes\n", sizeof(int));
    printf("sizeof(double) = %zu bytes\n", sizeof(double));

    return 0;
}
