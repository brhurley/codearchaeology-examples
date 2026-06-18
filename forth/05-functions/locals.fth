\ Evaluate the quadratic a*x^2 + b*x + c using named locals
: QUADRATIC ( a b c x -- result )
    {: a b c x :}      \ bind the four arguments to names
    a x * x *          \ a * x * x
    b x * +            \ + b * x
    c +                \ + c
    ;

\ Evaluate 2x^2 + 3x + 1 at x = 4  ->  2*16 + 3*4 + 1 = 45
2 3 1 4 QUADRATIC . CR
bye
