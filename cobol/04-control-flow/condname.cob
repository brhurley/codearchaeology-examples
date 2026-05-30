IDENTIFICATION DIVISION.
PROGRAM-ID. COND-NAMES.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-STATUS-CODE   PIC X VALUE "A".
   88 IS-ACTIVE     VALUE "A".
   88 IS-SUSPENDED  VALUE "S".
   88 IS-CLOSED     VALUE "C".

PROCEDURE DIVISION.
    IF IS-ACTIVE
        DISPLAY "Account is active"
    END-IF.

    *> SET ... TO TRUE assigns the 88-level's value to the parent field
    SET IS-SUSPENDED TO TRUE.

    IF IS-SUSPENDED
        DISPLAY "Account is now suspended"
    ELSE
        DISPLAY "Account is not suspended"
    END-IF.

    STOP RUN.
