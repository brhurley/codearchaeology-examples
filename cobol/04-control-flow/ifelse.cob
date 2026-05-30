IDENTIFICATION DIVISION.
PROGRAM-ID. IF-ELSE.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-BALANCE   PIC 9(5) VALUE 1200.
01 WS-LIMIT     PIC 9(5) VALUE 1000.
01 WS-AGE       PIC 9(3) VALUE 25.

PROCEDURE DIVISION.
    IF WS-BALANCE > WS-LIMIT
        DISPLAY "Balance exceeds the credit limit"
    ELSE
        DISPLAY "Balance is within the credit limit"
    END-IF.

    *> Conditions combine with AND / OR
    IF WS-AGE >= 18 AND WS-AGE <= 65
        DISPLAY "Working-age adult"
    END-IF.

    *> COBOL also accepts spelled-out relational words
    IF WS-AGE IS GREATER THAN 17
        DISPLAY "Age is at least 18"
    END-IF.

    STOP RUN.
