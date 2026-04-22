# Scalars hold a single value of any type
my $name   = "Camelia";
my $year   = 2015;
my $pi     = 3.14;
my $active = True;

say "Name: $name";
say "Year: $year";
say "Pi: $pi";
say "Active: $active";

# Arrays (@) hold an ordered list of values
my @languages = "Perl", "Raku", "Python";
say "Languages: @languages[]";
say "First: @languages[0]";
say "Count: {@languages.elems}";

# Hashes (%) map keys to values
my %versions = Perl => 5, Raku => 6, Python => 3;
say "Raku is version %versions<Raku>";
say "Keys: {%versions.keys.sort}";

# Callables (&) hold a block or subroutine
my &doubler = -> $n { $n * 2 };
say "Double of 7: {doubler(7)}";
