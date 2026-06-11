# Conditionals in Tcl
set score 82

if {$score >= 90} {
    puts "Grade: A"
} elseif {$score >= 80} {
    puts "Grade: B"
} elseif {$score >= 70} {
    puts "Grade: C"
} else {
    puts "Grade: F"
}

# String comparison uses eq/ne (or the string compare command)
set lang "tcl"
if {$lang eq "tcl"} {
    puts "Everything is a string!"
}

# Logical operators: && || !
set age 25
set has_ticket 1
if {$age >= 18 && $has_ticket} {
    puts "Entry allowed"
}
