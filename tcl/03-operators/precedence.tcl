# Precedence: * and / bind tighter than + and -
puts "2 + 3 * 4   = [expr {2 + 3 * 4}]"
puts "(2 + 3) * 4 = [expr {(2 + 3) * 4}]"
# ** is right-associative: 2 ** (3 ** 2) = 2 ** 9
puts "2 ** 3 ** 2 = [expr {2 ** 3 ** 2}]"

# incr changes an integer variable in place (no ++ or += in Tcl)
set counter 0
incr counter        ;# add 1 by default
incr counter 5      ;# add 5
puts "Counter: $counter"
incr counter -2     ;# subtract by adding a negative
puts "After -2: $counter"

# For non-integer updates, reassign with set + expr
set total 100
set total [expr {$total * 2}]
puts "Total doubled: $total"
