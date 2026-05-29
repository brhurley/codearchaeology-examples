DIM n AS INTEGER

' WHILE / WEND — checks condition at the top
n = 1
WHILE n <= 16
    PRINT "n ="; n
    n = n * 2
WEND

' DO WHILE / LOOP — same idea, modern form
DIM countdown AS INTEGER
countdown = 3
DO WHILE countdown > 0
    PRINT "T-minus"; countdown
    countdown = countdown - 1
LOOP
PRINT "Liftoff!"

' DO / LOOP UNTIL — condition at the bottom, runs at least once
DIM guess AS INTEGER
guess = 0
DO
    guess = guess + 7
    PRINT "Try"; guess
LOOP UNTIL guess >= 20
