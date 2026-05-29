⍝ Conditionals expressed as arithmetic on boolean values
nums ← 3 ¯7 12 0 ¯4 8

⍝ Absolute value without an if: sign × number
'Original:'
nums
'Absolute:'
(× nums) × nums

⍝ Classify: 1 for positive, 0 for zero, ¯1 for negative
'Sign of each element:'
× nums

⍝ Choose between two values without branching:
⍝   result is "BIG" if n>5, else "small" — for each n
big ← nums > 5
'Mask of "big" values:'
big

⍝ Replace negatives with zero (clamp): mask × value
'Negatives clamped to zero:'
(nums ≥ 0) × nums
)OFF
