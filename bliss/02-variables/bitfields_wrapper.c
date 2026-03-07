#include <stdio.h>

void SHOW_BITFIELDS(void);

void PRINT_INT(long value) {
    printf("%ld\n", value);
}

int main(void) {
    SHOW_BITFIELDS();
    return 0;
}
