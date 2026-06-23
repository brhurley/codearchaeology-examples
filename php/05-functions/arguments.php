<?php
declare(strict_types=1);

// $greeting and $punctuation have default values
function makeMessage(string $name, string $greeting = "Hello", string $punctuation = "!"): string
{
    return "{$greeting}, {$name}{$punctuation}";
}

// Positional arguments
echo makeMessage("Ada") . "\n";
echo makeMessage("Grace", "Welcome") . "\n";

// Named arguments - skip $greeting, only set $punctuation
echo makeMessage("Linus", punctuation: "...") . "\n";

// Named arguments can be given in any order
echo makeMessage(punctuation: "?", name: "Margaret", greeting: "Is it you") . "\n";
