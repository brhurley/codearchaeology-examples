DIM age AS INTEGER
age = 21

IF age < 13 THEN
    PRINT "Child"
ELSEIF age < 20 THEN
    PRINT "Teenager"
ELSEIF age < 65 THEN
    PRINT "Adult"
ELSE
    PRINT "Senior"
END IF

' Single-line IF is also valid
IF age >= 18 THEN PRINT "Can vote"
