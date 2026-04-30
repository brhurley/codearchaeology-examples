| n f s |
n := 42.
f := 3.14.
s := '100'.

Transcript show: 'Integer to float: '; show: n asFloat printString; cr.
Transcript show: 'Float truncated: '; show: f truncated printString; cr.
Transcript show: 'Float rounded: '; show: f rounded printString; cr.
Transcript show: 'Integer to string: '; show: n printString; cr.
Transcript show: 'String to integer: '; show: s asInteger printString; cr.
Transcript show: 'Integer to character: '; show: n asCharacter printString; cr
