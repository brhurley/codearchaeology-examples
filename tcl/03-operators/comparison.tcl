# Numeric comparisons return 1 (true) or 0 (false)
set x 10
set y 20

puts "x == y: [expr {$x == $y}]"
puts "x != y: [expr {$x != $y}]"
puts "x <  y: [expr {$x < $y}]"
puts "x >  y: [expr {$x > $y}]"
puts "x <= y: [expr {$x <= $y}]"
puts "x >= y: [expr {$x >= $y}]"

# String comparison operators compare lexically, not numerically
set s1 "apple"
set s2 "banana"
puts "s1 eq s2: [expr {$s1 eq $s2}]"
puts "s1 ne s2: [expr {$s1 ne $s2}]"
puts "s1 lt s2: [expr {$s1 lt $s2}]"
