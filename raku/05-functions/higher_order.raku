# Higher-order functions and first-class subs in Raku

# Subs are values you can store in a variable
my &double = -> $x { $x * 2 };
say double(21);                   # 42

# Pass blocks to map and grep
my @nums = 1, 2, 3, 4, 5, 6;
say @nums.map({ $_ ** 2 });       # square each element
say @nums.grep({ $_ %% 2 });      # keep even values (%% is "divisible by")

# Reduce a list to a single value with the + reduction
say @nums.reduce(&[+]);           # sum

# Return a closure that captures its environment
sub make-adder($n) {
    return -> $x { $x + $n };
}
my &add5 = make-adder(5);
say add5(10);                     # 15

# The Whatever-star (*) builds quick anonymous functions
say (1..5).map(* + 100);          # add 100 to each
