IDENTIFICATION DIVISION.
PROGRAM-ID. VARIABLES-CONST.

DATA DIVISION.
WORKING-STORAGE SECTION.

*> Named constant — 77 level with VALUE, never changed by procedure
77 WS-PI              PIC 9V9(6)  VALUE 3.141593.
77 WS-COMPANY-NAME    PIC X(20)   VALUE "CodeArchaeology".
77 WS-MAX-RETRIES     PIC 9(2)    VALUE 5.

*> Condition names (88 level) on a status field
01 WS-ORDER-STATUS    PIC X(1).
   88 STATUS-PENDING  VALUE "P".
   88 STATUS-SHIPPED  VALUE "S".
   88 STATUS-COMPLETE VALUE "C".
   88 STATUS-CANCELED VALUE "X".

*> Numeric variables for type conversion examples
01 WS-NUM-STRING      PIC X(5)    VALUE "42".
01 WS-NUM-VALUE       PIC 9(5)    VALUE ZEROS.
01 WS-RESULT          PIC 9(7)V99 VALUE ZEROS.

PROCEDURE DIVISION.
    *> Display constants
    DISPLAY "Company:     " WS-COMPANY-NAME.
    DISPLAY "Pi:          " WS-PI.
    DISPLAY "Max retries: " WS-MAX-RETRIES.

    *> Use MOVE to convert alphanumeric string to numeric
    MOVE WS-NUM-STRING TO WS-NUM-VALUE.
    COMPUTE WS-RESULT = WS-NUM-VALUE * WS-PI.
    DISPLAY "42 * Pi =    " WS-RESULT.

    *> Set status and test with condition names
    MOVE "S"            TO WS-ORDER-STATUS.
    IF STATUS-SHIPPED
        DISPLAY "Order has shipped."
    END-IF.
    IF STATUS-COMPLETE
        DISPLAY "Order is complete."
    ELSE
        DISPLAY "Order is not yet complete."
    END-IF.

    STOP RUN.
