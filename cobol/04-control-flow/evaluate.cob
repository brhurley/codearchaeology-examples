IDENTIFICATION DIVISION.
PROGRAM-ID. EVAL-DEMO.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-SCORE  PIC 9(3) VALUE 85.
01 WS-GRADE  PIC X.

PROCEDURE DIVISION.
    *> EVALUATE TRUE - each WHEN is a full condition
    EVALUATE TRUE
        WHEN WS-SCORE >= 90
            MOVE "A" TO WS-GRADE
        WHEN WS-SCORE >= 80
            MOVE "B" TO WS-GRADE
        WHEN WS-SCORE >= 70
            MOVE "C" TO WS-GRADE
        WHEN OTHER
            MOVE "F" TO WS-GRADE
    END-EVALUATE.

    DISPLAY "Score " WS-SCORE " earns grade " WS-GRADE.

    *> EVALUATE on a value - matches WHEN against a single field
    EVALUATE WS-GRADE
        WHEN "A"
            DISPLAY "Performance: Excellent"
        WHEN "B"
            DISPLAY "Performance: Good"
        WHEN "C"
            DISPLAY "Performance: Satisfactory"
        WHEN OTHER
            DISPLAY "Performance: Needs improvement"
    END-EVALUATE.

    STOP RUN.
