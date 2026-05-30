IDENTIFICATION DIVISION.
PROGRAM-ID. LOOP-DEMO.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-I       PIC 9(2) VALUE 0.
01 WS-SUM     PIC 9(4) VALUE 0.
01 WS-COUNT   PIC 9(2) VALUE 0.

PROCEDURE DIVISION.
    *> PERFORM n TIMES - a simple counted loop
    DISPLAY "PERFORM TIMES:".
    PERFORM 3 TIMES
        DISPLAY "  Hello from a loop"
    END-PERFORM.

    *> PERFORM VARYING - a counter loop (like a for loop)
    DISPLAY "PERFORM VARYING:".
    PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 5
        ADD WS-I TO WS-SUM
        DISPLAY "  i = " WS-I
    END-PERFORM.
    DISPLAY "Sum of 1 to 5 = " WS-SUM.

    *> PERFORM UNTIL - a condition-controlled loop (like a while loop)
    DISPLAY "PERFORM UNTIL:".
    PERFORM UNTIL WS-COUNT >= 3
        ADD 1 TO WS-COUNT
        DISPLAY "  count = " WS-COUNT
    END-PERFORM.

    STOP RUN.
