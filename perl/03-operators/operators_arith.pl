#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

# --- Arithmetic operators ---
my $a = 17;
my $b = 5;

say "a + b  = ", $a + $b;     # Addition
say "a - b  = ", $a - $b;     # Subtraction
say "a * b  = ", $a * $b;     # Multiplication
say "a / b  = ", $a / $b;     # Division (always floating point)
say "a % b  = ", $a % $b;     # Modulus (integer remainder)
say "a ** b = ", $a ** $b;    # Exponentiation
say "int(a/b) = ", int($a / $b);  # Truncated integer division

# --- String operators ---
my $greeting = "Hello";
my $target   = "World";

say $greeting . ", " . $target . "!";  # Concatenation with .
say "-" x 20;                          # Repetition: 20 dashes
say "ha" x 3;                          # "hahaha"

# --- Weak typing: numeric strings coerce automatically ---
my $num_str = "42";
say "'42' + 8 = ", $num_str + 8;       # 50 (string used as number)
say "'42' . 8 = ", $num_str . 8;       # "428" (number used as string)

# --- Non-numeric strings coerce to 0 in numeric context ---
my $word = "abc";
say "'abc' + 1 = ", $word + 1;         # 1 (with no 'use warnings' it's silent)
