#include <stdio.h>

/* Preprocessor macro: replaced by the preprocessor before compilation.
   No type, no memory address, cannot be passed by pointer. */
#define MAX_BUFFER_SIZE 1024
#define PI_APPROX 3.14159

int main(void) {
    /* const-qualified variable: has a type, lives in memory,
       but the compiler prevents assignment after initialization. */
    const int    MAX_RETRIES = 3;
    const double GRAVITY     = 9.80665;  /* m/s^2, standard gravity */
    const char   NEWLINE     = '\n';

    printf("MAX_BUFFER_SIZE (macro) = %d\n", MAX_BUFFER_SIZE);
    printf("PI_APPROX (macro)       = %.5f\n", PI_APPROX);
    printf("MAX_RETRIES (const int) = %d\n", MAX_RETRIES);
    printf("GRAVITY (const double)  = %.5f m/s^2\n", GRAVITY);
    printf("NEWLINE (const char)    = '\\n' (ASCII %d)%c", NEWLINE, NEWLINE);

    /* Attempting to modify a const variable is a compile-time error:
       MAX_RETRIES = 5;  // error: assignment of read-only variable */

    return 0;
}
