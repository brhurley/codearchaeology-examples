| lang initial digits nothing |
lang := #smalltalk.
initial := $S.
digits := #(1 2 3 4 5).
nothing := nil.

Transcript show: 'Symbol: '; show: lang printString; cr.
Transcript show: 'Character: '; show: initial printString; cr.
Transcript show: 'Array: '; show: digits printString; cr.
Transcript show: 'nil: '; show: nothing printString; cr.
Transcript cr.
Transcript show: 'Symbol class: '; show: lang class name; cr.
Transcript show: 'Character class: '; show: initial class name; cr.
Transcript show: 'Array class: '; show: digits class name; cr.
Transcript show: 'nil class: '; show: nothing class name; cr
