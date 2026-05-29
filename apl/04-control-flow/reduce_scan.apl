⍝ Reduce: collapse an array with a function between elements
nums ← 1 2 3 4 5

'Sum (+/):    '
+/ nums
'Product (×/):'
×/ nums
'Maximum (⌈/):'
⌈/ nums
'Minimum (⌊/):'
⌊/ nums

⍝ Scan: like reduce, but keeps every intermediate result
'Running sum (+\):    '
+\ nums
'Running product (×\):'
×\ nums
'Running max (⌈\):    '
⌈\ 3 1 4 1 5 9 2 6

⍝ Combine reduce with a boolean: "are all positive?"
nums2 ← 4 7 2 9 1
'All positive? '
∧/ nums2 > 0
'Any zero?     '
∨/ nums2 = 0

⍝ FizzBuzz-style classification without a loop
n ← ⍳15
fizz ← 0 = 3 | n
buzz ← 0 = 5 | n
'Numbers 1..15:'
n
'Divisible by 3:'
fizz
'Divisible by 5:'
buzz
'Divisible by both:'
fizz ∧ buzz
)OFF
