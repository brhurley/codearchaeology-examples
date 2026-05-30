#include <stdio.h>

int main(void) {
    // for loop: sum the integers 1 through 5
    int sum = 0;
    for (int i = 1; i <= 5; i++) {
        sum += i;
    }
    printf("Sum 1..5 = %d\n", sum);

    // while loop: count down from 3
    int count = 3;
    while (count > 0) {
        printf("Countdown: %d\n", count);
        count--;
    }

    // do-while loop: runs the body before testing the condition
    int attempts = 0;
    do {
        attempts++;
        printf("Attempt %d\n", attempts);
    } while (attempts < 2);

    return 0;
}
