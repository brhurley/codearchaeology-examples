⍝ APL comparisons return 0 or 1
a ← 5
b ← 3

'a > b:'
a > b

'a = b:'
a = b

'a < b:'
a < b

⍝ Comparisons on arrays return boolean arrays element-by-element
prices ← 10 25 8 42 15 3

'Prices above 12:'
prices > 12

'Count of prices above 12:'
+/ prices > 12

⍝ Boolean indexing — select elements where condition is true
'Which prices are above 12 (the values):'
(prices > 12) / prices
)OFF
