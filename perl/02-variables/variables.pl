#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;

# Scalars hold a single value: number, string, or reference
my $integer = 42;
my $float   = 3.14159;
my $name    = "Perl";
my $char    = 'P';

say "integer = $integer";
say "float   = $float";
say "name    = $name";
say "char    = $char";

# Arrays are ordered lists indexed from 0
my @languages = ("Perl", "Python", "Ruby", "AWK");
say "first language  = $languages[0]";
say "third language  = $languages[2]";
say "array size      = " . scalar(@languages);
say "last index      = $#languages";

# Hashes map string keys to scalar values
my %creator = (
    Perl   => "Larry Wall",
    Python => "Guido van Rossum",
    Ruby   => "Yukihiro Matsumoto",
);
say "Perl creator    = $creator{Perl}";
say "Ruby creator    = $creator{Ruby}";

# Arrays and hashes can be mixed by taking references
my @numbers = (10, 20, 30);
my $sum = 0;
$sum += $_ for @numbers;
say "sum of numbers  = $sum";
