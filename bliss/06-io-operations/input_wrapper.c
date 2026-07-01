#include <stdio.h>

void RUN(void);

/* Returns a fullword value read from stdin */
long READ_INT(void) {
    long n = 0;
    if (scanf("%ld", &n) != 1) {
        n = 0;   /* basic error handling: treat bad input as 0 */
    }
    return n;
}

void PRINT_RESULT(long n, long fact) {
    printf("factorial(%ld) = %ld\n", n, fact);
}

int main(void) {
    RUN();
    return 0;
}
