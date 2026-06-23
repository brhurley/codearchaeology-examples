<?php
declare(strict_types=1);

// A closure stored in a variable
$square = function (int $x): int {
    return $x * $x;
};

echo "Square of 6: " . $square(6) . "\n";

// A closure capturing an outer variable with `use`
$factor = 3;
$multiply = function (int $x) use ($factor): int {
    return $x * $factor;
};
echo "4 times {$factor}: " . $multiply(4) . "\n";

// Arrow functions capture outer variables automatically
$numbers = [1, 2, 3, 4, 5];

// array_map applies a callback to every element
$squares = array_map(fn (int $n): int => $n * $n, $numbers);
echo "Squares: " . implode(", ", $squares) . "\n";

// array_filter keeps elements where the callback returns true
$evens = array_filter($numbers, fn (int $n): bool => $n % 2 === 0);
echo "Evens: " . implode(", ", $evens) . "\n";

// A function that returns a function (a "multiplier factory")
function makeMultiplier(int $factor): callable
{
    return fn (int $x): int => $x * $factor;
}

$double = makeMultiplier(2);
$triple = makeMultiplier(3);
echo "Double 7: " . $double(7) . "\n";
echo "Triple 7: " . $triple(7) . "\n";
