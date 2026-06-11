# Counted loop
for {set i 1} {$i <= 5} {incr i} {
    puts "Iteration $i"
}

# Counting down with a step
puts "Countdown:"
for {set n 10} {$n > 0} {incr n -2} {
    puts "  $n"
}
