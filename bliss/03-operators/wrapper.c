#include <stdio.h>

/* blissc uppercases every BLISS identifier in the generated object file,
 * so the C names below match the BLISS source after that translation. */
void RUN_OPERATORS(void);

void PRINT_ARITH(long add, long sub, long mul, long quot, long rem) {
    printf("Arithmetic: 10+3=%ld, 10-3=%ld, 10*3=%ld, 10/3=%ld, 10 MOD 3=%ld\n",
           add, sub, mul, quot, rem);
}

void PRINT_COMP(long eq, long ne, long gt, long lt) {
    printf("Comparison: 10 EQL 3=%ld, 10 NEQ 3=%ld, 10 GTR 3=%ld, 10 LSS 3=%ld\n",
           eq, ne, gt, lt);
}

void PRINT_LOGIC(long andv, long orv, long xorv) {
    printf("Bitwise: 12 AND 10=%ld, 12 OR 10=%ld, 12 XOR 10=%ld\n",
           andv, orv, xorv);
}

void PRINT_SHIFT(long lshift, long rshift) {
    printf("Shift: 1 ^ 4 = %ld, 64 ^ -2 = %ld\n", lshift, rshift);
}

void PRINT_PREC(long no_paren, long with_paren) {
    printf("Precedence: 2 + 3 * 4 = %ld, (2 + 3) * 4 = %ld\n",
           no_paren, with_paren);
}

void PRINT_ASSIGN(long x, long y) {
    printf("Assignment as expression: x = %ld, y = %ld\n", x, y);
}

void PRINT_DOT(long a_val, long b_val) {
    printf("Dot operator: .a = %ld, .b = .a + 1 = %ld\n", a_val, b_val);
}

int main(void) {
    RUN_OPERATORS();
    return 0;
}
