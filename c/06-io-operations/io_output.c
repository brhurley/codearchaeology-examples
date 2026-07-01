#include <stdio.h>

int main(void) {
    int         count = 42;
    double      price = 19.95;
    char        grade = 'A';
    const char *name  = "codearchaeology";

    printf("Integer:        %d\n", count);
    printf("Hexadecimal:    %#x\n", count);
    printf("Float (2 dp):   %.2f\n", price);
    printf("Character:      %c\n", grade);
    printf("String:         %s\n", name);
    printf("Padded number: |%5d|\n", count);
    printf("Left-aligned:  |%-5d|\n", count);
    printf("Percent sign:   100%%\n");

    return 0;
}
