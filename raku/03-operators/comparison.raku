say 5 == 5;      # numeric equality
say 5 != 3;      # numeric inequality
say 5 < 10;      # less than
say 5 >= 5;      # greater than or equal

# Three-way comparison returns an Order
say 3 <=> 7;     # numeric spaceship
say 7 <=> 3;
say 5 <=> 5;

# String comparison operators
say "apple" eq "apple";   # string equality
say "apple" lt "banana";  # string less than
say "cat" cmp "car";      # generic three-way

# Logical operators
say True && False;   # logical AND
say True || False;   # logical OR
say !True;           # logical NOT

# Chained comparisons (a Raku feature)
say 1 < 2 < 3;       # reads like math
say 1 < 5 < 3;
