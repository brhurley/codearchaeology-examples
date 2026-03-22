\ Variables and Types in Forth
\ Demonstrating VARIABLE, CONSTANT, and VALUE

\ --- Constants ---
42 CONSTANT ANSWER
100 CONSTANT MAX-SCORE
65 CONSTANT LETTER-A

\ --- Variables ---
VARIABLE count
VARIABLE total

\ --- Values ---
0 VALUE current-score
0 VALUE player-name-len

\ Initialize variables
0 count !
0 total !

\ --- Demonstrating CONSTANT ---
: show-constants ( -- )
    ." === Constants ===" CR
    ." The answer is: " ANSWER . CR
    ." Max score: " MAX-SCORE . CR
    ." Letter A ASCII: " LETTER-A . CR
;

\ --- Demonstrating VARIABLE with @ and ! ---
: show-variables ( -- )
    ." === Variables ===" CR
    5 count !
    ." Count is: " count @ . CR
    count @ 10 * total !
    ." Total is: " total @ . CR
    \ Increment count
    1 count +!
    ." Count after +1: " count @ . CR
;

\ --- Demonstrating VALUE with TO ---
: show-values ( -- )
    ." === Values ===" CR
    75 TO current-score
    ." Current score: " current-score . CR
    current-score 10 + TO current-score
    ." After adding 10: " current-score . CR
;

\ --- Stack as variables ---
: show-stack-math ( -- )
    ." === Stack Math ===" CR
    ." 3 4 + = " 3 4 + . CR
    ." 10 3 * = " 10 3 * . CR
    ." 7 DUP * = " 7 DUP * . CR
;

\ --- Characters and ASCII ---
: show-characters ( -- )
    ." === Characters ===" CR
    ." Letter A: " LETTER-A EMIT CR
    ." Letter B: " LETTER-A 1+ EMIT CR
    ." Letter C: " LETTER-A 2 + EMIT CR
;

\ Run all demonstrations
show-constants
show-variables
show-values
show-stack-math
show-characters

bye
