# Logical operators: && (and), || (or), ! (not)
set age 25
set hasLicense 1

puts "Can drive:     [expr {$age >= 18 && $hasLicense}]"
puts "Is minor:      [expr {$age < 18}]"
puts "Not licensed:  [expr {!$hasLicense}]"
puts "Senior or OK:  [expr {$age > 65 || $hasLicense}]"

# The ternary operator chooses one of two values
set score 72
set grade [expr {$score >= 60 ? "Pass" : "Fail"}]
puts "Score $score: $grade"
