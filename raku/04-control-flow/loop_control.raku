# last — exit the loop early
for 1..10 -> $n {
    last if $n > 3;
    say "Counting: $n";
}

# next — skip to the next iteration
for 1..6 -> $n {
    next if $n %% 2;   # skip even numbers
    say "Odd: $n";
}

# Labels let inner loops control outer loops
OUTER: for 1..3 -> $row {
    for 1..3 -> $col {
        next OUTER if $col == 2;
        say "row $row, col $col";
    }
}
