<?php
// continue: skip even numbers, print only odd ones
echo "Odd numbers: ";
for ($i = 1; $i <= 10; $i++) {
    if ($i % 2 === 0) {
        continue;
    }
    echo $i . " ";
}
echo "\n";

// break: stop at the first number over 3
echo "Searching: ";
foreach ([1, 2, 3, 4, 5] as $value) {
    if ($value > 3) {
        echo "found $value, stopping\n";
        break;
    }
    echo "$value ";
}
