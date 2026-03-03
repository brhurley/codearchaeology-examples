⍝ A vector of integers (rank 1)
v ← 10 20 30 40 50

⍝ Create a 3×3 matrix using reshape (⍴)
m ← 3 3⍴1 2 3 4 5 6 7 8 9

⍝ A character matrix — each row is a word padded to same length
words ← 3 5⍴'APL  FORTRAN'

⍝ Query shape with ⍴ (monadic use)
⍝ For a vector, shape is its length
'Shape of v:'
⍴v

⍝ For a matrix, shape is rows and columns
'Shape of m:'
⍴m

⍝ Rank is the number of dimensions — length of shape
'Rank of v (⍴⍴v):'
⍴⍴v

'Rank of m (⍴⍴m):'
⍴⍴m

⍝ Display the matrix
'The 3×3 matrix:'
m
)OFF
