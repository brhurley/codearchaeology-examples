# Console output methods in Raku
say "say: adds a newline and uses .gist";      # human-friendly form
put "put: adds a newline and uses .Str";       # plain string form
print "print: no newline added";
print "\n";

# printf for formatted output (C-style format strings)
printf "%-8s | %5.2f\n", "price", 3.5;
printf "%-8s | %5d\n", "count", 42;

# sprintf returns a formatted string instead of printing it
my $label = sprintf "[%03d]", 7;
say $label;

# say can print multiple values in one call
say "Sum: ", 2 + 3;

# note writes to STDERR, which is handy for diagnostics
note "note: this line goes to STDERR";
