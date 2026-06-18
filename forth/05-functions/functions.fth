\ A word that squares the number on top of the stack
: SQUARE ( n -- n^2 )  DUP * ;

\ A word that takes nothing and prints a greeting
: GREET ( -- )  ." Hello from a Forth word!" CR ;

\ Call SQUARE: push 5, square it, then print the result with .
5 SQUARE . CR

\ Call GREET: no stack input needed
GREET
bye
