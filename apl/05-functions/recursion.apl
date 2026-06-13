⍝ Factorial: the guard ⍵≤1 supplies the base case
Fact ← {⍵≤1: 1 ⋄ ⍵ × Fact ⍵-1}
Fact 5
Fact 0

⍝ Recursion still cooperates with array thinking via each (¨)
Fact¨ 1 2 3 4 5

)OFF
