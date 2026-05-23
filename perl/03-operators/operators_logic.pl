#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

# --- Short-circuit logical operators return the deciding operand ---
my $a = 0;
my $b = "fallback";
say "a || b = ", $a || $b;    # 0 is false -> "fallback"
say "a && b = ", $a && $b;    # 0 is false -> 0 (short-circuits)

# --- || vs //: the defined-or operator ---
my $maybe_zero = 0;
my $undefined;

say "0  || 'x' = ", ($maybe_zero || 'x');   # 'x'  (0 is falsy)
say "0  // 'x' = ", ($maybe_zero // 'x');   # 0   (only undef triggers fallback)
say "u  // 'x' = ", ($undefined  // 'x');   # 'x'

# --- Assignment operators (compound forms) ---
my $n = 10;
$n += 5;    say "after += 5  : $n";   # 15
$n -= 3;    say "after -= 3  : $n";   # 12
$n *= 2;    say "after *= 2  : $n";   # 24
$n **= 2;   say "after **= 2 : $n";   # 576

my $s = "log";
$s .= "-entry";   say "after .= : $s";    # "log-entry"
$s x= 2;          say "after x= 2: $s";   # "log-entrylog-entry"

# --- Binding operator =~ ties a value to a regex ---
my $text = "Perl 5.40 was released in 2024";
if ($text =~ /(\d{4})/) {
    say "Found year: $1";
}

(my $shouted = $text) =~ s/perl/PERL/i;
say $shouted;

# --- Range operator .. (in list context, produces a list) ---
my @one_to_five = (1..5);
say "Range 1..5: @one_to_five";
