#include <stdio.h>

int main(void) {
    char grade = 'B';

    switch (grade) {
        case 'A':
            printf("Excellent\n");
            break;
        case 'B':
            printf("Good\n");
            break;
        case 'C':
            printf("Fair\n");
            break;
        default:
            printf("Needs improvement\n");
            break;
    }

    // Intentional fall-through: vowels share one action
    char letter = 'e';
    switch (letter) {
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
            printf("'%c' is a vowel\n", letter);
            break;
        default:
            printf("'%c' is a consonant\n", letter);
            break;
    }

    return 0;
}
