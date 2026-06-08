#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# Dispatch table: map each command to an anonymous subroutine
my %actions = (
    start => sub { say "Starting up..." },
    stop  => sub { say "Shutting down..." },
    pause => sub { say "Pausing..." },
);

my $command = "stop";
if (my $action = $actions{$command}) {
    $action->();                       # call the matched code reference
} else {
    say "Unknown command: $command";
}

# for-as-switch: aliasing $_ lets a chain of tests act like case labels
for ($command) {
    if    (/^start$/) { say "matched start" }
    elsif (/^stop$/)  { say "matched stop"  }
    else              { say "no match"      }
}
