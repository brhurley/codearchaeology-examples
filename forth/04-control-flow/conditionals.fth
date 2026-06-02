\ Conditionals in Forth

: SHOW-SIGN ( n -- )
    DUP 0 > IF   ." positive" CR
    ELSE DUP 0 < IF   ." negative" CR
    ELSE   ." zero" CR
    THEN THEN DROP ;

: ?BIG ( n -- )
    100 > IF ." that is a big number" CR THEN ;

5 SHOW-SIGN
-3 SHOW-SIGN
0 SHOW-SIGN
250 ?BIG
50 ?BIG
bye
