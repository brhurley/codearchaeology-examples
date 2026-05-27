# Arithmetic operators all live inside the expr command
set a 17
set b 5

puts "Addition:       $a + $b  = [expr {$a + $b}]"
puts "Subtraction:    $a - $b  = [expr {$a - $b}]"
puts "Multiplication: $a * $b  = [expr {$a * $b}]"
puts "Division:       $a / $b  = [expr {$a / $b}]"
puts "Modulo:         $a % $b  = [expr {$a % $b}]"
puts "Power:          $a ** $b = [expr {$a ** $b}]"

# Integer division truncates; one float operand makes it floating-point
puts "Integer div:    17 / 5   = [expr {17 / 5}]"
puts "Float div:      17.0 / 5 = [expr {17.0 / 5}]"
