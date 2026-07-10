#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# print writes to STDOUT with no automatic newline
print "No newline here";
print " - still the same line\n";

# say adds a newline automatically
say "This line ends automatically";

# printf produces formatted output
printf "Name: %-10s Age: %3d\n", "Alice", 30;
printf "Pi is roughly %.2f\n", 3.14159;
printf "Hex: %x  Octal: %o\n", 255, 8;

# Build one line from a list
my @items = ("apple", "banana", "cherry");
say join(", ", @items);
