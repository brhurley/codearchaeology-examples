\ Indefinite loops

: COUNTDOWN ( n -- )
    BEGIN DUP 0 > WHILE
        DUP . 1-
    REPEAT DROP CR ;

: COUNTUP ( limit -- )
    0
    BEGIN
        1+ DUP .
        2DUP =
    UNTIL 2DROP CR ;

5 COUNTDOWN
5 COUNTUP
bye
