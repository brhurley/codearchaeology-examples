<?php
// ** is right-associative: 2 ** 3 ** 2 == 2 ** (3 ** 2) == 2 ** 9
echo "2 ** 3 ** 2 = " . (2 ** 3 ** 2) . "\n";

// . and + share precedence; left-to-right
echo "1 + 2 . '+' . 3 + 4 = " . (1 + 2 . '+' . 3 + 4) . "\n";

// && binds tighter than = ; `and` does not
$x = true && false;   // $x = (true && false) -> false
$y = true and false;  // ($y = true) and false -> $y is true
echo "x = "; var_export($x); echo "\n";
echo "y = "; var_export($y); echo "\n";
