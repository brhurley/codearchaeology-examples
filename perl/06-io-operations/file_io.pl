#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

my $filename = 'notes.txt';

# --- Writing to a file ('>' creates/truncates) ---
open(my $out, '>', $filename) or die "Cannot open $filename for writing: $!";
print $out "Perl was created in 1987\n";
print $out "It excels at text processing\n";
say   $out "say works with filehandles too";
close($out) or die "Cannot close $filename: $!";
say "Wrote 3 lines to $filename";

# --- Reading a file line by line ---
open(my $in, '<', $filename) or die "Cannot open $filename for reading: $!";
my $num = 0;
while (my $line = <$in>) {
    chomp $line;
    $num++;
    say "  Line $num: $line";
}
close($in);

# --- Slurping the whole file into an array ---
open(my $slurp, '<', $filename) or die "Cannot open $filename: $!";
my @lines = <$slurp>;
close($slurp);
say "Total lines: " . scalar(@lines);
