#include <stdio.h>

void SHOW_CONSTANTS(void);

void PRINT_INT(long value) {
    printf("%ld\n", value);
}

int main(void) {
    SHOW_CONSTANTS();
    return 0;
}
