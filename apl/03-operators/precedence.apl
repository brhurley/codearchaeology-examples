⍝ Right-to-left: 3 + 4 evaluates first, then 2 ×
2 × 3 + 4

⍝ Contrast with most languages where × binds tighter
⍝ APL gives 14; C/Python/Java would give 10

⍝ Parentheses override grouping
(2 × 3) + 4

⍝ A longer chain reads right-to-left
2 + 3 × 4 - 1

⍝ The same chain made explicit with parens
2 + (3 × (4 - 1))
)OFF
