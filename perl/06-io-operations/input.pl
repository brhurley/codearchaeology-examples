#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# Read one line at a time from STDIN until end-of-input
my $count = 0;
while (my $line = <STDIN>) {
    chomp $line;             # strip the trailing newline
    $count++;
    say "Line $count: $line";
}
say "Total lines read: $count";
