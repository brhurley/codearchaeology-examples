#include <stdio.h>

int main(void) {
    int score = 78;

    if (score >= 90) {
        printf("Grade: A\n");
    } else if (score >= 80) {
        printf("Grade: B\n");
    } else if (score >= 70) {
        printf("Grade: C\n");
    } else {
        printf("Grade: F\n");
    }

    // C has no boolean type by default: non-zero is true, zero is false
    int remaining = 0;
    if (remaining) {
        printf("Items left to process\n");
    } else {
        printf("Nothing left to process\n");
    }

    // The ternary operator ?: is a compact conditional expression
    int n = -5;
    const char *sign = (n >= 0) ? "non-negative" : "negative";
    printf("%d is %s\n", n, sign);

    return 0;
}
