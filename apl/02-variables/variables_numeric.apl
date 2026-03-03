⍝ Integer and float — both are numeric arrays
i ← 7
f ← 2.718281828

⍝ Large integer
big ← 1000000

⍝ Negative numbers use the high minus ¯ (not the subtraction minus)
neg ← ¯42
negfloat ← ¯3.14

⍝ A vector mixing what looks like ints and floats
⍝ APL treats them all as numeric
mixed ← 1 2.5 3 4.7 5

⍝ Arithmetic works element-by-element on the whole array
doubled ← 2 × mixed

'Original:'
mixed

'Doubled:'
doubled

'Negative integer:'
neg

'Negative float:'
negfloat
)OFF
