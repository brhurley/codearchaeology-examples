#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

# --- Numeric vs string comparison: same operands, different results ---
my $x = "10";
my $y = "9";

say "10 == 9? ", ($x == $y ? "yes" : "no");   # Numeric: 10 != 9
say "10 eq 9? ", ($x eq $y ? "yes" : "no");   # String:  "10" ne "9"
say "10 <  9? ", ($x <  $y ? "yes" : "no");   # Numeric: 10 is NOT < 9
say "10 lt 9? ", ($x lt $y ? "yes" : "no");   # String:  "10" IS < "9" lexically

# --- Three-way comparison returns -1, 0, or 1 ---
say "5 <=> 10 = ", 5 <=> 10;
say "5 <=> 5  = ", 5 <=> 5;
say "5 <=> 1  = ", 5 <=> 1;

# Useful for sorting:
my @numbers = (10, 2, 33, 4, 25);
my @sorted_num = sort { $a <=> $b } @numbers;   # Numeric sort
my @sorted_str = sort { $a cmp $b } @numbers;   # String sort

say "Numeric sort: @sorted_num";
say "String  sort: @sorted_str";
