' Variables and Types in BASIC (FreeBASIC)

' Explicit declarations with DIM
DIM age AS INTEGER
DIM price AS DOUBLE
DIM name AS STRING
DIM isValid AS BOOLEAN

' Assign values
age = 25
price = 9.99
name = "Alice"
isValid = TRUE

PRINT "Integer:  "; age
PRINT "Double:   "; price
PRINT "String:   "; name
PRINT "Boolean:  "; IIF(isValid, "true", "false")
