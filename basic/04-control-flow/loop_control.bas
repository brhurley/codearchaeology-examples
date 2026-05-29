DIM i AS INTEGER

' Find the first multiple of 7 above 50
FOR i = 1 TO 100
    IF i > 50 AND (i MOD 7) = 0 THEN
        PRINT "Found:"; i
        EXIT FOR
    END IF
NEXT i

' Print only odd numbers from 1..10
FOR i = 1 TO 10
    IF (i MOD 2) = 0 THEN CONTINUE FOR
    PRINT "Odd:"; i
NEXT i
