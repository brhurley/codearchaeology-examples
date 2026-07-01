' Reading interactive input
DIM userName AS STRING
DIM age AS INTEGER

INPUT "Enter your name: ", userName
INPUT "Enter your age: ", age

PRINT "Hello, " & userName & "!"
PRINT "Next year you will be " & (age + 1)
