#include <stdio.h>

/* blissc uppercases all identifiers, so BLISS names become uppercase symbols */
void SHOW_SQUARES(void);

void PRINT_HEADER(void) {
    printf("%-6s %s\n", "n", "n squared");
}

void PRINT_PAIR(long n, long square) {
    printf("%-6ld %ld\n", n, square);
}

int main(void) {
    SHOW_SQUARES();
    return 0;
}
