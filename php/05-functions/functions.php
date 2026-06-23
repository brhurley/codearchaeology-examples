<?php
declare(strict_types=1);

// A simple function with no parameters
function greet(): string
{
    return "Hello from a function!";
}

// A function with typed parameters and a typed return value
function add(int $a, int $b): int
{
    return $a + $b;
}

// A function that performs an action but returns nothing
function announce(string $name): void
{
    echo "Now presenting: {$name}\n";
}

echo greet() . "\n";
echo "3 + 4 = " . add(3, 4) . "\n";
announce("PHP Functions");
