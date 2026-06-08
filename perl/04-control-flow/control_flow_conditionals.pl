#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

my $score = 85;

# Standard if / elsif / else chain (note: "elsif", not "elseif")
if ($score >= 90) {
    say "Grade: A";
} elsif ($score >= 80) {
    say "Grade: B";
} elsif ($score >= 70) {
    say "Grade: C";
} else {
    say "Grade: F";
}

# unless is "if not" - runs the block when the condition is false
my $logged_in = 0;
unless ($logged_in) {
    say "Please log in";
}

# Statement modifiers: put the condition AFTER the statement
say "You passed!" if $score >= 60;
say "Try again"   unless $score >= 60;   # suppressed: score is 85

# Ternary conditional operator (?:)
my $status = $score >= 60 ? "pass" : "fail";
say "Status: $status";
