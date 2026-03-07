#include <stdio.h>

/* blissc uppercases all BLISS identifiers in the object file */
void SHOW_VARIABLES(void);

void PRINT_INT(long value) {
    printf("%ld\n", value);
}

int main(void) {
    SHOW_VARIABLES();
    return 0;
}
