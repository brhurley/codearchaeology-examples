#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# --- String/number coercion ---
my $num_str = "25";
my $number  = 7;

# '+' forces numeric context: "25" becomes 25
my $total = $num_str + $number;
say "\"25\" + 7 = $total";

# '.' forces string context: 7 becomes "7"
my $joined = $num_str . $number;
say "\"25\" . 7 = $joined";

# A non-numeric string converts to 0 in numeric context
my $bogus = "hello" + 5;
say "\"hello\" + 5 = $bogus";

# A string starting with digits parses the leading number
my $partial = "42 bananas" + 0;
say "\"42 bananas\" + 0 = $partial";

# --- Scalar vs list context ---
my @items = ("apple", "banana", "cherry");

my $count   = @items;          # scalar context: element count
my $joined2 = "@items";         # list in string: space-separated
my ($first, $second) = @items;  # list context: extract elements

say "count   = $count";
say "joined2 = $joined2";
say "first   = $first";
say "second  = $second";

# Explicit context with the 'scalar' keyword
say "explicit scalar: " . scalar(@items);

# --- Truthiness ---
# Perl's false values: 0, "0", "", and undef. Everything else is true.
for my $val (0, "0", "", "false", "0.0", 1) {
    if ($val) {
        say "truthy: '$val'";
    } else {
        say "falsy:  '$val'";
    }
}
