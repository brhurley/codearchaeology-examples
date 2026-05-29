DIM i AS INTEGER

' Count up
FOR i = 1 TO 5
    PRINT "Up:"; i
NEXT i

' Count down with STEP
FOR i = 10 TO 2 STEP -2
    PRINT "Down:"; i
NEXT i

' Sum the first 10 integers
DIM total AS INTEGER
total = 0
FOR i = 1 TO 10
    total = total + i
NEXT i
PRINT "Sum 1..10 ="; total
