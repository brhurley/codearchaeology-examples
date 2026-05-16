IDENTIFICATION DIVISION.
PROGRAM-ID. COMPARE.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 AGE          PIC 9(3) VALUE 42.
01 INCOME       PIC 9(6) VALUE 55000.
01 STATUS-CODE  PIC X    VALUE "A".

PROCEDURE DIVISION.
    IF AGE IS GREATER THAN 18
        DISPLAY "Adult (verbose form)"
    END-IF.

    IF AGE > 18
        DISPLAY "Adult (symbolic form)"
    END-IF.

    IF AGE >= 21 AND INCOME > 50000
        DISPLAY "Qualifies for premium tier"
    END-IF.

    IF STATUS-CODE = "A" OR STATUS-CODE = "P"
        DISPLAY "Account is active or pending"
    END-IF.

    IF NOT (AGE < 18)
        DISPLAY "Not a minor"
    END-IF.

    STOP RUN.
