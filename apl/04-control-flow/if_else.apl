⍝ Expression-level conditionals using "pick"
⍝ The boolean is used as an index: 0 picks the first, 1 picks the second.

classify ← {(1 + ⍵ > 0) ⊃ 'non-positive' 'positive'}
'classify 5  →'
classify 5
'classify ¯3 →'
classify ¯3
'classify 0  →'
classify 0

⍝ A defined function using :If / :ElseIf / :Else
∇ msg ← grade score
  :If score ≥ 90
    msg ← 'A'
  :ElseIf score ≥ 80
    msg ← 'B'
  :ElseIf score ≥ 70
    msg ← 'C'
  :Else
    msg ← 'F'
  :EndIf
∇

'grade 95 →'
grade 95
'grade 82 →'
grade 82
'grade 71 →'
grade 71
'grade 40 →'
grade 40
)OFF
