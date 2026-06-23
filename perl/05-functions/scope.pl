#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

our $global = "I am global";   # package variable, visible everywhere

sub show_scope {
    my $local = "I am lexical";   # visible only inside this subroutine
    say $local;
    say $global;                  # globals are accessible here too
}

show_scope();

# A 'my' variable does not escape its block
{
    my $secret = "hidden";
    say "Inside block: $secret";
}
# say $secret;  # Uncommenting this is a compile error under 'use strict'

# A file-scoped lexical can persist state across calls
my $calls = 0;
sub track {
    $calls++;
    say "Call number $calls";
}

track();
track();
track();
