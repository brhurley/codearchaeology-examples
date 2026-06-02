\ Multi-way branching with CASE

: WEEKDAY ( n -- )
    CASE
        1 OF ." Monday"    ENDOF
        2 OF ." Tuesday"   ENDOF
        3 OF ." Wednesday" ENDOF
        4 OF ." Thursday"  ENDOF
        5 OF ." Friday"    ENDOF
        ." Weekend or invalid"
    ENDCASE CR ;

1 WEEKDAY
5 WEEKDAY
7 WEEKDAY
bye
