# if / elsif / else — no parentheses required
my $temp = 72;

if $temp > 85 {
    say "It's hot";
} elsif $temp < 50 {
    say "It's cold";
} else {
    say "It's pleasant";
}

# unless — the readable opposite of if
my $logged-in = False;
unless $logged-in {
    say "Please log in";
}

# Postfix conditionals (statement modifiers)
say "Even number" if 10 %% 2;   # %% means "is divisible by"
say "Not zero"   unless 0;       # 0 is falsy in Raku

# Ternary: condition ?? value-if-true !! value-if-false
my $age = 20;
my $status = $age >= 18 ?? "adult" !! "minor";
say $status;
