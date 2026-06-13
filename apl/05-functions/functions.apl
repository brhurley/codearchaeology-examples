⍝ A monadic dfn: ⍵ is the right argument
Square ← {⍵ × ⍵}
Square 5

⍝ Functions apply to whole arrays automatically — no loop needed
Double ← {2 × ⍵}
Double 1 2 3 4 5

⍝ A dyadic dfn: ⍺ is the left argument, ⍵ the right
Hypot ← {((⍺*2)+⍵*2)*0.5}
3 Hypot 4

)OFF
