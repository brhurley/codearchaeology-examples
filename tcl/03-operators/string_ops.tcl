# There is no "+" for strings; substitution joins them
set first "John"
set last "Ousterhout"
set full "$first $last"
puts "Full name: $full"

# The append command builds a string in place
set greeting "Hello"
append greeting ", " $first "!"
puts $greeting

# The in and ni operators test list membership inside expr
set fruits {apple banana cherry}
set hasBanana [expr {"banana" in $fruits}]
set noGrape   [expr {"grape" ni $fruits}]
puts "banana in list?    $hasBanana"
puts "grape not in list? $noGrape"
