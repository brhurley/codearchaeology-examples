\ Apply a word to a value twice: result = f(f(n))
: TWICE ( n xt -- result )
    DUP >R       \ stash a copy of xt on the return stack
    EXECUTE      \ apply the word once
    R> EXECUTE   \ retrieve xt and apply it again
    ;

: INC ( n -- n+1 )  1 + ;

5 ' INC TWICE . CR   \ INC(INC(5)) = 7
bye
