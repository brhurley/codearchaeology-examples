IDENTIFICATION DIVISION.
PROGRAM-ID. VARIABLES.

DATA DIVISION.
WORKING-STORAGE SECTION.
*> Alphanumeric string — 20 characters wide
01 WS-NAME            PIC X(20)  VALUE "Alice".

*> Integer — 3 digits, no decimal
01 WS-AGE             PIC 9(3)   VALUE 30.

*> Fixed-point — 5 digits, implied 2 decimal places (e.g., 123.45)
01 WS-SALARY          PIC 9(7)V99 VALUE 52000.00.

*> Signed integer — can hold negative values
01 WS-TEMPERATURE     PIC S9(3)  VALUE -15.

*> Boolean-style flag (Y or N)
01 WS-ACTIVE-FLAG     PIC X(1)   VALUE "Y".

PROCEDURE DIVISION.
    DISPLAY "Name:        " WS-NAME.
    DISPLAY "Age:         " WS-AGE.
    DISPLAY "Salary:      " WS-SALARY.
    DISPLAY "Temperature: " WS-TEMPERATURE.
    DISPLAY "Active:      " WS-ACTIVE-FLAG.
    STOP RUN.
