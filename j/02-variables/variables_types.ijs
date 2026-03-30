NB. Boxing and Advanced Types in J

NB. === Boxing ===
NB. Monadic < boxes a value
boxed_num =: < 42
smoutput 'Boxed number:'
smoutput boxed_num

NB. Open (>) unboxes
smoutput 'Unboxed:'
smoutput > boxed_num

NB. Mixed-type array using boxing
record =: 'Alice';30;'Engineer'
smoutput 'Mixed-type record:'
smoutput record

NB. Access individual boxes with indexing
smoutput 'Name:'
smoutput > 0 { record
smoutput 'Age:'
smoutput > 1 { record
smoutput 'Role:'
smoutput > 2 { record

NB. === Type Conversions ===
NB. Integer to float
int_val =: 5
float_val =: int_val + 0.0
smoutput 'Integer to float:'
smoutput float_val
smoutput datatype float_val

NB. Number to string with ":  (format verb)
num =: 256
str =: ": num
smoutput 'Number as string:'
smoutput str
smoutput datatype str

NB. String to number with ". (do/evaluate verb)
parsed =: ". '3.14'
smoutput 'String to number:'
smoutput parsed
smoutput datatype parsed

NB. === Array Shape and Rank ===
NB. Scalar (rank 0)
scalar =: 7
smoutput 'Scalar shape:'
smoutput $ scalar

NB. Vector (rank 1)
vector =: 1 2 3 4
smoutput 'Vector shape:'
smoutput $ vector

NB. Matrix (rank 2)
mat =: 3 3 $ i. 9
smoutput '3x3 matrix:'
smoutput mat
smoutput 'Matrix shape:'
smoutput $ mat

NB. Rank is the number of dimensions
smoutput 'Rank of scalar:'
smoutput # $ scalar
smoutput 'Rank of vector:'
smoutput # $ vector
smoutput 'Rank of matrix:'
smoutput # $ mat

NB. === Special Values ===
NB. Infinity
smoutput 'Infinity:'
smoutput _
smoutput 'Negative infinity:'
smoutput __

NB. Empty array
empty =: 0 $ 0
smoutput 'Empty array shape:'
smoutput $ empty
