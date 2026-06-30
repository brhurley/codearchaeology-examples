⍝ A bare expression is displayed automatically
'Implicit output: a bare expression is shown'

⍝ ⎕← explicitly outputs any array, then adds a newline
⎕← 'Explicit output via quad-assignment'
⎕← 1 2 3 4 5

⍝ Mix text with a formatted number using catenate (,) and format (⍕)
⎕← 'Six times seven is ', ⍕ 6 × 7

⍝ ⍞← (quote-quad assignment) outputs WITHOUT a trailing newline
⍞← 'Same line: '
⎕← 'joined by ⍞← then ⎕←'
)OFF
