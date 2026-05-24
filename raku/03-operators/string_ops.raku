# Concatenation with ~
my $first = "Code";
my $second = "Archaeology";
say $first ~ $second;

# String repetition with x
say "=" x 10;

# List repetition with xx
say (0 xx 5);

# Ranges with ..
say (1..5);              # a Range object
say (1..5).list;         # expanded to a list
say (1..5).sum;          # summed

# Smart match with ~~
say 5 ~~ Int;            # type match
say 5 ~~ 1..10;          # range match
say "hello" ~~ /ell/;    # regex match
