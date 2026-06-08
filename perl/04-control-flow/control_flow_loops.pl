#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# foreach iterates over each element of a list
my @colors = ("red", "green", "blue");
foreach my $color (@colors) {
    say "Color: $color";
}

# C-style for loop with an explicit counter
for (my $i = 1; $i <= 3; $i++) {
    say "Count: $i";
}

# The range operator (..) generates a list - great with foreach
for my $n (1..5) {
    print "$n ";
}
print "\n";

# while repeats while the condition is true
my $countdown = 3;
while ($countdown > 0) {
    say "T-minus $countdown";
    $countdown--;
}

# until repeats UNTIL the condition becomes true (opposite of while)
my $i = 0;
until ($i >= 2) {
    say "i is $i";
    $i++;
}
