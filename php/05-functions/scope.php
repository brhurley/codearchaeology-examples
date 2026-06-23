<?php
declare(strict_types=1);

$message = "I live in the global scope";

function showScope(): void
{
    // This local $message is separate from the global one
    $message = "I live inside the function";
    echo $message . "\n";

    // To access the global variable, declare it
    global $message;
    echo $message . "\n";
}

// A static variable keeps its value across calls
function counter(): int
{
    static $count = 0;
    $count++;
    return $count;
}

showScope();
echo "Call 1: " . counter() . "\n";
echo "Call 2: " . counter() . "\n";
echo "Call 3: " . counter() . "\n";
