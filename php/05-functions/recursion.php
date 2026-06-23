<?php
declare(strict_types=1);

// factorial(n) = n * factorial(n - 1), with factorial(0) = 1
function factorial(int $n): int
{
    if ($n <= 1) {
        return 1; // base case
    }
    return $n * factorial($n - 1); // recursive case
}

// The Fibonacci sequence: each number is the sum of the previous two
function fibonacci(int $n): int
{
    if ($n < 2) {
        return $n; // base cases: fib(0) = 0, fib(1) = 1
    }
    return fibonacci($n - 1) + fibonacci($n - 2);
}

echo "5! = " . factorial(5) . "\n";
echo "10! = " . factorial(10) . "\n";

echo "First 10 Fibonacci numbers: ";
for ($i = 0; $i < 10; $i++) {
    echo fibonacci($i) . " ";
}
echo "\n";
