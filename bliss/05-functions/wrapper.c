#include <stdio.h>

/* blissc uppercases every identifier, so 'func_demo' -> 'FUNC_DEMO'. */
void FUNC_DEMO(void);

/* The I/O bridge: BLISS 'print_int' -> 'PRINT_INT'. */
void PRINT_INT(int n) {
    printf("%d\n", n);
}

int main(void) {
    FUNC_DEMO();
    return 0;
}
