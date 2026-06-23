#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# A code reference: an anonymous subroutine stored in a scalar
my $square = sub {
    my ($n) = @_;
    return $n * $n;
};

say "square(6) = " . $square->(6);

# Pass a code reference to another subroutine
sub apply_twice {
    my ($func, $value) = @_;
    return $func->($func->($value));
}

say "apply_twice(square, 2) = " . apply_twice($square, 2);

# A closure remembers the lexical environment where it was created
sub make_counter {
    my $count = 0;
    return sub { return ++$count; };
}

my $counter = make_counter();
say "Counter: " . $counter->();
say "Counter: " . $counter->();
say "Counter: " . $counter->();

# Built-in higher-order functions: map and grep
my @numbers = (1, 2, 3, 4, 5, 6);
my @doubled = map  { $_ * 2 } @numbers;
my @evens   = grep { $_ % 2 == 0 } @numbers;

say "Doubled: @doubled";
say "Evens: @evens";
