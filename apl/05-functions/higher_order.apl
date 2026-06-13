⍝ Each (¨) is a built-in operator: apply a function per element
Double ← {2 × ⍵}
Double¨ 1 2 3

⍝ A user-defined operator: ⍺⍺ is the function operand, applied twice
Twice ← {⍺⍺ ⍺⍺ ⍵}
Double Twice 5

⍝ Point-free idea: mean = sum ÷ count. True trains (+/ ÷ ≢) are a
⍝ Dyalog APL feature; GNU APL is APL2-style and has no trains, so we
⍝ express the same composition inside a dfn here.
Mean ← {(+/⍵) ÷ ≢⍵}
Mean 10 20 30 40

⍝ Reduce (/) is itself a higher-order operator over a function
+/ 1 2 3 4 5
×/ 1 2 3 4 5

)OFF
