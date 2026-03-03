⍝ Character vector (string)
greeting ← 'Hello, APL'

⍝ Single character — still a vector of length 1 when quoted
⍝ A true scalar character can be created with ⊃ (first/disclose)
ch ← 'X'

⍝ Numeric vector
nums ← 3 1 4 1 5 9 2 6

⍝ The ≡ (depth) function reveals nesting level
⍝ For simple arrays it returns 0 (non-nested) or 1 (nested)

⍝ Check the length (number of elements) with ⍴
'Length of greeting:'
⍴greeting

'Length of nums:'
⍴nums

⍝ Index into a character vector (APL uses 1-based indexing by default)
'First character of greeting:'
greeting[1]

'Characters 1 through 5:'
greeting[1 2 3 4 5]

⍝ Concatenate character vectors with ,
full ← greeting, '!'
'Concatenated:'
full

⍝ Check if something is numeric: 0=numeric, non-zero=not numeric in context of ⌈⌊
⍝ Use the APL idiom: 0=⊃0⍴⍬⊣nums to check numeric —
⍝ simpler: just show that math works on nums, not on greeting
'Sum of nums:'
+/nums
)OFF
