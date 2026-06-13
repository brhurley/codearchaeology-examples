⍝ result ← Greet name : a monadic tradfn returning a string
∇ result ← Greet name
result ← 'Hello, ', name, '!'
∇

⍝ Locals 'total' and 'count' are declared after the semicolons
∇ avg ← Average nums ; total ; count
total ← +/nums
count ← ≢nums
avg ← total ÷ count
∇

Greet 'APL'
Average 4 8 15 16 23 42

)OFF
