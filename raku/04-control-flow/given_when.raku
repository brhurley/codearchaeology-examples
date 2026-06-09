# Numeric ranges as match conditions
my $grade = 85;

given $grade {
    when 90..100 { say "A" }
    when 80..89  { say "B" }
    when 70..79  { say "C" }
    default      { say "F" }
}

# Smart matching against types
my $value = "hello";

given $value {
    when Int { say "It's an integer" }
    when Str { say "It's a string" }
    when Rat { say "It's a rational" }
    default  { say "Unknown type" }
}

# Smart matching against a regex
given "2026-06-09" {
    when /^ \d**4 '-' \d**2 '-' \d**2 $/ { say "Looks like a date" }
    default                              { say "Not a date" }
}
