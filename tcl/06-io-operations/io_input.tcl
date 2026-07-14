# Reading user input from stdin
puts -nonewline "What is your name? "
flush stdout
set name [gets stdin]

puts -nonewline "What year were you born? "
flush stdout
set born [gets stdin]

puts "Hello, $name!"
puts "You turn [expr {2026 - $born}] this year."
