⍝ Monadic format ⍕ converts any array to its character representation
⎕← ⍕ 3.14159

⍝ Dyadic format with a single left value = number of decimal places
⎕← 2 ⍕ 3.14159
⎕← 0 ⍕ 3.14159

⍝ Width and precision together: 10 2 → field width 10, 2 decimals
⎕← 10 2 ⍕ 3.14159

⍝ Catenate a label with a formatted number to build a report line
price ← 19.99
qty   ← 3
⎕← 'Line total: $', 2 ⍕ price × qty
)OFF
