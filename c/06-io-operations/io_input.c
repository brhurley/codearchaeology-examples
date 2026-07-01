#include <stdio.h>

int main(void) {
    char name[64];
    int  age;

    printf("Enter your name: ");
    if (fgets(name, sizeof(name), stdin) == NULL) {
        fprintf(stderr, "Error reading name\n");
        return 1;
    }

    /* fgets keeps the newline - replace it with a string terminator */
    for (int i = 0; name[i] != '\0'; i++) {
        if (name[i] == '\n') {
            name[i] = '\0';
            break;
        }
    }

    printf("Enter your age: ");
    if (scanf("%d", &age) != 1) {
        fprintf(stderr, "Error reading age\n");
        return 1;
    }

    printf("Hello, %s! Next year you will be %d.\n", name, age + 1);
    return 0;
}
