#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

sub factorial {
    my ($n) = @_;
    return 1 if $n <= 1;        # base case
    return $n * factorial($n - 1);
}

say "5! = " . factorial(5);

sub fibonacci {
    my ($n) = @_;
    return $n if $n < 2;        # fib(0) = 0, fib(1) = 1
    return fibonacci($n - 1) + fibonacci($n - 2);
}

say "fib(10) = " . fibonacci(10);

# map applies fibonacci to each value 0 through 9
my @fibs = map { fibonacci($_) } 0 .. 9;
say "Sequence: @fibs";
