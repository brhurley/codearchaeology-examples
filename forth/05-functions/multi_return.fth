\ Consume two numbers, return their sum and product
: SUM-PROD ( a b -- sum prod )
    2DUP +      \ stack: a b sum
    -ROT *      \ stack: sum prod
    ;

3 4 SUM-PROD          \ stack now holds: 7 12 (sum below, prod on top)
." Product = " . CR   \ prints and removes 12
." Sum = "     . CR   \ prints and removes 7
bye
