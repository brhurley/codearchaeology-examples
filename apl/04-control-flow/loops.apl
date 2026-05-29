⍝ Newton's method for square root using :While
∇ r ← newton_sqrt n;guess;next
  guess ← n ÷ 2
  next  ← 0
  :While (|guess - next) > 1E¯10
    next  ← guess
    guess ← (guess + n ÷ guess) ÷ 2
  :EndWhile
  r ← guess
∇

'sqrt of 2  ≈'
newton_sqrt 2
'sqrt of 16 ='
newton_sqrt 16
'sqrt of 50 ≈'
newton_sqrt 50

⍝ Collatz sequence using :While — record each step
∇ seq ← collatz n;cur
  seq ← ,n
  cur ← n
  :While cur ≠ 1
    :If 0 = 2 | cur
      cur ← cur ÷ 2
    :Else
      cur ← 1 + 3 × cur
    :EndIf
    seq ← seq , cur
  :EndWhile
∇

'Collatz 6:'
collatz 6
'Collatz 11:'
collatz 11
)OFF
