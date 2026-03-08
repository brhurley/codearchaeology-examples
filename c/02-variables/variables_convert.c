#include <stdio.h>

int main(void) {
    /* Implicit widening: smaller type promotes to larger */
    int   i = 42;
    long  l = i;    /* int promoted to long automatically */
    double d = i;   /* int promoted to double automatically */
    printf("int %d -> long %ld -> double %f\n", i, l, d);

    /* Implicit narrowing (truncation): larger to smaller loses data */
    double pi = 3.14159;
    int truncated = pi;  /* fractional part discarded, no rounding */
    printf("double %.5f -> int %d (truncated)\n", pi, truncated);

    /* Explicit cast: programmer acknowledges the conversion */
    int dividend = 7;
    int divisor  = 2;
    double result = (double)dividend / divisor;  /* cast before division */
    int integer_div = dividend / divisor;         /* integer division */
    printf("%d / %d = %f (float div), %d (integer div)\n",
           dividend, divisor, result, integer_div);

    /* Signed/unsigned mixing — a common source of bugs */
    unsigned int u = 10;
    int negative = -1;
    /* When mixing signed and unsigned, the signed value is converted
       to unsigned, turning -1 into a very large number. */
    if ((unsigned int)negative > u) {
        printf("-1 as unsigned (%u) is greater than 10\n",
               (unsigned int)negative);
    }

    /* char arithmetic: char is just a small integer */
    char ch = 'a';
    printf("'a' = %c, 'a' + 1 = %c, 'a' + 25 = %c\n",
           ch, ch + 1, ch + 25);

    return 0;
}
