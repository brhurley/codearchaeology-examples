' Type conversion examples in FreeBASIC
DIM numStr AS STRING
DIM num    AS INTEGER
DIM dbl    AS DOUBLE
DIM result AS STRING

' String to number
numStr = "42"
num = VAL(numStr)
PRINT "String to integer: "; num

' Number to string
dbl = 3.14159
result = STR(dbl)
PRINT "Double to string: ["; result; "]"

' Integer and double interplay
DIM i AS INTEGER
DIM d AS DOUBLE
d = 7.9
i = INT(d)          ' truncates toward negative infinity
PRINT "INT(7.9) = "; i

i = CINT(d)         ' rounds to nearest integer
PRINT "CINT(7.9) = "; i

' Explicit casts
DIM a AS INTEGER
DIM b AS DOUBLE
a = 10
b = CDBL(a) / 3.0
PRINT "10 / 3 as double: "; b
