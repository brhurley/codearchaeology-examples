#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

my $missing = 'does_not_exist.txt';

# Check open's return value instead of dying
if (open(my $fh, '<', $missing)) {
    my @data = <$fh>;
    close($fh);
    say "Read " . scalar(@data) . " lines";
} else {
    warn "Could not open $missing: $!\n";   # goes to STDERR
    say "Handled the error and kept running";
}

# Trap a fatal die with eval
my $ok = eval {
    open(my $fh, '<', $missing) or die "open failed: $!\n";
    1;
};
unless ($ok) {
    say "Caught the exception, program continues";
}

say "Program finished normally";
