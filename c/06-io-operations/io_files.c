#include <stdio.h>

int main(void) {
    /* Open a file for writing ("w" truncates any existing file) */
    FILE *out = fopen("notes.txt", "w");
    if (out == NULL) {
        perror("fopen (write)");
        return 1;
    }
    fprintf(out, "Line 1: C handles files with FILE pointers.\n");
    fprintf(out, "Line 2: Always check the return of fopen.\n");
    fprintf(out, "Line 3: Close files with fclose.\n");
    fclose(out);

    /* Reopen the same file for reading */
    FILE *in = fopen("notes.txt", "r");
    if (in == NULL) {
        perror("fopen (read)");
        return 1;
    }

    char line[128];
    int  number = 1;
    while (fgets(line, sizeof(line), in) != NULL) {
        printf("%2d | %s", number, line);
        number++;
    }
    fclose(in);

    return 0;
}
