\ Formatted number output in Forth

\ .R prints a number right-justified in a field ( n width -- )
42 5 .R CR                   \ "   42" (width 5)
7  5 .R CR                   \ "    7"

\ Change the numeric base to print in hexadecimal
HEX
255 . CR                     \ prints "FF "
DECIMAL
255 . CR                     \ back to base 10: "255 "

\ Compose your own labeled-output word
: LABEL ( n -- )  ." Value = " . CR ;
100 LABEL

bye
