' Named constants in FreeBASIC
CONST MAX_SCORE AS INTEGER = 100
CONST PI AS DOUBLE = 3.14159265358979
CONST GREETING AS STRING = "Hello from BASIC!"
CONST VERSION AS SINGLE = 1.0

PRINT "Max score:  "; MAX_SCORE
PRINT "Pi:         "; PI
PRINT "Greeting:   "; GREETING
PRINT "Version:    "; VERSION

' Compute circle area using constant
DIM radius AS DOUBLE
radius = 5.0
PRINT "Circle area:"; PI * radius * radius
