\ Definite (counted) loops

: SQUARES ( n -- )
    1+ 1 DO   I DUP * .   LOOP CR ;

: EVENS ( -- )
    10 0 DO   I .   2 +LOOP CR ;

: MULT-TABLE ( -- )
    4 1 DO
        4 1 DO   I J * .   LOOP
        CR
    LOOP ;

: FIND-FIVE ( n -- )
    0 ?DO
        I 5 = IF ." found 5 at index " I . CR LEAVE THEN
    LOOP ;

5 SQUARES
EVENS
MULT-TABLE
8 FIND-FIVE
bye
