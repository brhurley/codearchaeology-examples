\ Console output in Forth

\ EMIT prints one character from its ASCII code ( c -- )
72 EMIT 105 EMIT CR          \ prints "Hi" then a newline

\ TYPE prints a string given as an address/length pair ( addr len -- )
S" Stack-based output" TYPE CR

\ . prints the number on top of the stack, followed by a space
42 . CR
2 3 + . CR                   \ arithmetic result printed

\ SPACES inserts blank columns for simple layout
." A" 3 SPACES ." B" CR

\ Values print top-of-stack first
1 2 3 . . . CR               \ prints 3 then 2 then 1

bye
