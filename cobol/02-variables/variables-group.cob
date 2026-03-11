IDENTIFICATION DIVISION.
PROGRAM-ID. VARIABLES-GROUP.

DATA DIVISION.
WORKING-STORAGE SECTION.

*> A date record broken into components
01 WS-DATE.
   05 WS-YEAR         PIC 9(4).
   05 WS-MONTH        PIC 9(2).
   05 WS-DAY          PIC 9(2).

*> An employee record
01 WS-EMPLOYEE.
   05 WS-EMP-ID       PIC 9(6).
   05 WS-EMP-NAME.
      10 WS-FIRST-NAME PIC X(15).
      10 WS-LAST-NAME  PIC X(20).
   05 WS-EMP-DEPT     PIC X(10).

PROCEDURE DIVISION.
    MOVE 2026          TO WS-YEAR.
    MOVE 3             TO WS-MONTH.
    MOVE 11            TO WS-DAY.

    MOVE 100042        TO WS-EMP-ID.
    MOVE "Grace"       TO WS-FIRST-NAME.
    MOVE "Hopper"      TO WS-LAST-NAME.
    MOVE "Engineer"   TO WS-EMP-DEPT.

    DISPLAY "Date:       " WS-YEAR "-" WS-MONTH "-" WS-DAY.
    DISPLAY "Employee:   " WS-EMP-ID " "
                           WS-FIRST-NAME WS-LAST-NAME.
    DISPLAY "Department: " WS-EMP-DEPT.
    STOP RUN.
