<?php
// for loop: counts from 1 to 5
echo "for loop: ";
for ($i = 1; $i <= 5; $i++) {
    echo $i . " ";
}
echo "\n";

// while loop: runs while the condition holds
echo "while loop: ";
$n = 10;
while ($n > 0) {
    echo $n . " ";
    $n -= 2;
}
echo "\n";

// do-while loop: body runs at least once
echo "do-while loop: ";
$count = 0;
do {
    echo "run($count) ";
    $count++;
} while ($count < 3);
echo "\n";
