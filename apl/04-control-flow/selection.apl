⍝ Filtering arrays without loops
scores ← 72 88 45 91 67 53 99 80

⍝ Boolean mask of passing scores (>= 70)
passing ← scores ≥ 70
'Mask:'
passing

⍝ Compress: keep only elements where mask is 1
'Passing scores:'
passing / scores

⍝ Count how many pass — just sum the boolean mask
'Number passing:'
+/ passing

⍝ Indices of passing scores (Where, monadic ⍸)
'Positions of passing scores:'
⍸ passing

⍝ Average of passing scores only
'Average passing score:'
(+/ passing / scores) ÷ +/ passing
)OFF
