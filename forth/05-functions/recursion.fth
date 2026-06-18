\ Compute n! recursively
: FACTORIAL ( n -- n! )
    DUP 1 > IF
        DUP 1- RECURSE *   \ n * FACTORIAL(n-1)
    ELSE
        DROP 1             \ base case: 0! and 1! both equal 1
    THEN ;

5 FACTORIAL . CR
bye
