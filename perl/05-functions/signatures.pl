#!/usr/bin/env perl
use v5.36;   # enables signatures, strict, warnings, and say

# Named parameters declared directly in the signature
sub add ($x, $y) {
    return $x + $y;
}

say "add(10, 5) = " . add(10, 5);

# A default value applies when the argument is omitted
sub greet ($name = "World") {
    return "Hello, $name!";
}

say greet("Perl");
say greet();

# A slurpy array collects any remaining arguments
sub total ($first, @rest) {
    my $sum = $first;
    $sum += $_ for @rest;
    return $sum;
}

say "total(1, 2, 3, 4) = " . total(1, 2, 3, 4);
