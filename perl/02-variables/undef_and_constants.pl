#!/usr/bin/env perl
use strict;
use warnings;
use v5.10;
use constant {
    PI       => 3.14159265,
    MAX_SIZE => 100,
    APP_NAME => "CodeArchaeology",
};

# Uninitialized scalars are undef
my $maybe;
if (defined $maybe) {
    say "defined: $maybe";
} else {
    say "maybe is undef";
}

# Defined-or: use default only when undefined
my $port = undef;
my $host = "";
my $user = 0;

my $chosen_port = $port // 8080;   # triggers: undef -> 8080
my $chosen_host = $host // "local"; # no trigger: "" is defined
my $chosen_user = $user // "guest"; # no trigger: 0 is defined

say "chosen_port = $chosen_port";
say "chosen_host = '$chosen_host'";
say "chosen_user = $chosen_user";

# Compare // with ||: || triggers on any falsy value
my $fallback = $host || "local";
say "fallback with || = '$fallback'";

# Constants defined by 'use constant'
say "PI       = " . PI;
say "MAX_SIZE = " . MAX_SIZE;
say "APP_NAME = " . APP_NAME;

# Attempting to modify a constant is a compile-time error.
# The following line would fail: PI = 4;  (not allowed)

# Hash lookup returns undef for missing keys
my %scores = (alice => 90, bob => 85);
my $carol = $scores{carol} // "not recorded";
say "carol's score = $carol";

# exists() checks for key presence without triggering autovivification
say "alice exists: " . (exists $scores{alice} ? "yes" : "no");
say "dave exists:  " . (exists $scores{dave}  ? "yes" : "no");
