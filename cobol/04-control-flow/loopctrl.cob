IDENTIFICATION DIVISION.
PROGRAM-ID. LOOP-CTRL.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-N    PIC 9(2) VALUE 0.

PROCEDURE DIVISION.
MAIN-PARA.
    PERFORM VARYING WS-N FROM 1 BY 1 UNTIL WS-N > 10
        IF WS-N = 6
            DISPLAY "Stopping at 6"
            EXIT PERFORM           *> break out of the loop
        END-IF
        IF FUNCTION MOD(WS-N, 2) = 0
            EXIT PERFORM CYCLE     *> skip even numbers, continue loop
        END-IF
        DISPLAY "Odd number: " WS-N
    END-PERFORM.

    *> PERFORM also calls a paragraph by name - reusable logic
    DISPLAY "Calling a paragraph:".
    PERFORM GREETING-PARA.
    PERFORM GREETING-PARA.

    STOP RUN.

GREETING-PARA.
    DISPLAY "  Greetings from a paragraph".
