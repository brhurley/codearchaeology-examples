# for over a range, with a named loop variable
for 1..5 -> $n {
    print $n;
}
say "";  # print a trailing newline

# for over a list, using the implicit topic $_
for <apple banana cherry> {
    say "Fruit: $_";
}

# Iterate with index using .kv (key => value pairs)
for <a b c>.kv -> $index, $letter {
    say "$index => $letter";
}

# while loop
my $count = 3;
while $count > 0 {
    say "Countdown: $count";
    $count--;
}

# until loop — runs while the condition is false
my $i = 0;
until $i >= 3 {
    say "Up: $i";
    $i++;
}

# Bare loop — an infinite loop with an explicit exit
my $sum = 0;
loop {
    $sum += 10;
    last if $sum >= 30;
}
say "Sum reached $sum";
