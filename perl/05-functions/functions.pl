#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# Subroutine with no parameters
sub greet {
    say "Hello from a subroutine!";
}

greet();

# Arguments arrive flattened into the special array @_
sub add {
    my ($x, $y) = @_;   # unpack the argument list
    return $x + $y;
}

say "3 + 4 = " . add(3, 4);

# Default parameter values with the defined-or-assign operator //=
sub greet_person {
    my ($name) = @_;
    $name //= "stranger";   # use default when no argument was passed
    return "Hello, $name!";
}

say greet_person("Alice");
say greet_person();

# Returning a list instead of a single value
sub minmax {
    my @sorted = sort { $a <=> $b } @_;
    return ($sorted[0], $sorted[-1]);
}

my ($min, $max) = minmax(5, 2, 9, 1, 7);
say "min = $min, max = $max";
