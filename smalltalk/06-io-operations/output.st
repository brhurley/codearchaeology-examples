"printNl shows an object as code; displayNl shows it for humans."
'Smalltalk' printNl.
'Smalltalk' displayNl.
42 printNl.
3.5 displayNl.
#(1 2 3) printNl.

"Transcript accepts non-string objects via display: and print:."
Transcript display: 42; cr.
Transcript print: 'quoted'; cr.

"Building a line from pieces with , and printString."
| language year |
language := 'Smalltalk'.
year := 1980.
Transcript showCr: language , ' appeared in ' , year printString , '.'.

"Template substitution: %1, %2 are replaced by the arguments."
Transcript showCr: ('%1 is %2 years old.' bindWith: language with: 2026 - year).

"Numbers can print themselves in any base."
Transcript showCr: (255 printString: 16)
