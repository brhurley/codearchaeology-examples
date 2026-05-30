#include <stdio.h>

int main(void) {
    // continue: skip even numbers, print only odds from 1 to 9
    printf("Odd numbers: ");
    for (int i = 1; i <= 9; i++) {
        if (i % 2 == 0) {
            continue;
        }
        printf("%d ", i);
    }
    printf("\n");

    // break: stop searching once we find the first multiple of 7
    int found = -1;
    for (int i = 20; i < 40; i++) {
        if (i % 7 == 0) {
            found = i;
            break;
        }
    }
    printf("First multiple of 7 at or above 20: %d\n", found);

    return 0;
}
