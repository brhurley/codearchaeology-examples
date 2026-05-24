# Standard precedence: ** before * before +
say 2 + 3 * 4;        # multiplication first
say 2 + 3 * 4 ** 2;   # exponentiation first, then multiply
say (2 + 3) * 4;      # parentheses override

# Junctions: one value, many possibilities
my $x = 1 | 2 | 3;    # an "any" junction
say so $x == 2;       # True if any matches
say so 5 == (1 | 2);  # False if none match
