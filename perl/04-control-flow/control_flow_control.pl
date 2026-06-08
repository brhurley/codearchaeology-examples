#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# next skips the rest of the current iteration
foreach my $n (1..6) {
    next if $n % 2 == 0;   # skip even numbers
    say "Odd: $n";
}

# last exits the loop entirely
foreach my $n (1..10) {
    last if $n > 3;
    say "Number: $n";
}

# Labeled loops control which loop next/last applies to
OUTER: for my $row (1..3) {
    for my $col (1..3) {
        next OUTER if $col == 2;   # jump to the next row
        say "row=$row col=$col";
    }
}
