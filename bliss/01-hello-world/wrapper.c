#include <stdio.h>

/* blissc uppercases all symbols, so BLISS 'hello_world' becomes 'HELLO_WORLD' */
void HELLO_WORLD(void);

/* BLISS 'print_hello' becomes 'PRINT_HELLO' */
void PRINT_HELLO(void) {
    puts("Hello, World!");
}

int main(void) {
    HELLO_WORLD();
    return 0;
}
