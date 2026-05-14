⍝ Reduce: collapse a vector to a single value
+/ 1 2 3 4 5
×/ 1 2 3 4 5
⌈/ 3 1 4 1 5 9 2 6
⌊/ 3 1 4 1 5 9 2 6

⍝ Scan: keep every intermediate result
+\ 1 2 3 4 5
×\ 1 2 3 4 5
⌈\ 3 1 4 1 5 9 2 6

⍝ Combining: average of a vector
(+/ 2 4 6 8 10) ÷ ⍴ 2 4 6 8 10
)OFF
