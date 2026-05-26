"All binary operators share one precedence, evaluated left to right"
(3 + 4 * 5) printNl.        "(3 + 4) then * 5  =>  35, NOT 23"
(3 + (4 * 5)) printNl.      "parentheses force multiplication first => 23"

"Unary binds tighter than binary"
(3 + 4 factorial) printNl.  "4 factorial = 24, then 3 + 24 => 27"

"Keyword binds loosest, so the binary 3 + 1 runs first"
(2 raisedTo: 3 + 1) printNl. "3 + 1 = 4, then 2 raisedTo: 4 => 16"
