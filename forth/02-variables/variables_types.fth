\ Forth Data Sizes and Numeric Representations

: show-cell-info ( -- )
    ." === Cell Size ===" CR
    1 CELLS ." Bytes per cell: " . CR
    CR
;

\ --- Signed and unsigned interpretation ---
: show-numeric ( -- )
    ." === Numeric Values ===" CR
    ." Signed 42: " 42 . CR
    ." Signed -1: " -1 . CR
    ." Unsigned -1: " -1 U. CR
    CR
;

\ --- Double-cell (2x precision) numbers ---
\ In Gforth, a double-cell number uses two stack cells
: show-double ( -- )
    ." === Double-Cell Numbers ===" CR
    ." Double 1000000: " 1000000. D. CR
    ." Double 123456789: " 123456789. D. CR
    CR
;

\ --- Boolean values ---
\ In Forth, 0 is false, non-zero (typically -1) is true
: show-booleans ( -- )
    ." === Boolean Values ===" CR
    ." TRUE = " TRUE . CR
    ." FALSE = " FALSE . CR
    ." 5 > 3 = " 5 3 > . CR
    ." 2 > 7 = " 2 7 > . CR
    CR
;

\ --- Character values ---
VARIABLE my-char
: show-chars ( -- )
    ." === Character Storage ===" CR
    CHAR A my-char !
    ." Stored char: " my-char @ EMIT CR
    CHAR Z my-char !
    ." Changed to: " my-char @ EMIT CR
    CR
;

show-cell-info
show-numeric
show-double
show-booleans
show-chars

bye
