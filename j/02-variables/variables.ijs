NB. Variables and Types in J
NB. =: is global assignment, =. is local for verb bodies

NB. === Numeric Types ===
NB. Integers
x =: 42
smoutput 'Integer:'
smoutput x

NB. Floating point
pi =: 3.14159
smoutput 'Float:'
smoutput pi

NB. Negative numbers use underscore, not minus
neg =: _7
smoutput 'Negative:'
smoutput neg

NB. Booleans are just integers 0 and 1
flag =: 1 = 1
smoutput 'Boolean (1=1):'
smoutput flag

NB. Extended precision integers (suffix x)
big =: 100x
smoutput 'Extended integer:'
smoutput big

NB. Rational numbers (using r)
third =: 1r3
smoutput 'Rational 1r3:'
smoutput third

NB. Complex numbers (using j)
z =: 3j4
smoutput 'Complex 3j4:'
smoutput z

NB. === Character Data ===
NB. Strings are character arrays in single quotes
greeting =: 'Hello from J'
smoutput 'String:'
smoutput greeting

NB. String length is just the tally verb #
smoutput 'Length:'
smoutput # greeting

NB. === Arrays ===
NB. A list of numbers separated by spaces is an array
nums =: 10 20 30 40 50
smoutput 'Array:'
smoutput nums

NB. Shape ($) shows dimensions
smoutput 'Shape of nums:'
smoutput $ nums

NB. Reshape with dyadic $
matrix =: 2 3 $ 1 2 3 4 5 6
smoutput 'Matrix (2x3):'
smoutput matrix

NB. Shape of the matrix
smoutput 'Shape of matrix:'
smoutput $ matrix

NB. === Type Inspection ===
NB. datatype returns a human-readable type name
smoutput 'Type of 42:'
smoutput datatype 42
smoutput 'Type of 3.14:'
smoutput datatype 3.14
smoutput 'Type of ''hello'':'
smoutput datatype 'hello'
smoutput 'Type of (1=1):'
smoutput datatype 1 = 1

NB. === Reassignment ===
NB. Names can be rebound to any type (dynamic typing)
val =: 100
smoutput 'val as integer:'
smoutput val
val =: 'now a string'
smoutput 'val as string:'
smoutput val
