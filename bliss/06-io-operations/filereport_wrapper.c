#include <stdio.h>

void MAKE_REPORT(void);

static FILE *report;

void OPEN_REPORT(void) {
    report = fopen("report.txt", "w");
}

void WRITE_ENTRY(long n, long total) {
    fprintf(report, "After adding %ld, running total = %ld\n", n, total);
}

void CLOSE_REPORT(void) {
    fclose(report);
}

/* Reopen the file for reading and echo it to stdout */
void DUMP_REPORT(void) {
    FILE *f = fopen("report.txt", "r");
    int c;
    while ((c = fgetc(f)) != EOF) {
        putchar(c);
    }
    fclose(f);
}

int main(void) {
    MAKE_REPORT();
    return 0;
}
