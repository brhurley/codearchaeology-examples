# While loop: sum numbers until we exceed 20
set total 0
set i 1
while {$total <= 20} {
    incr total $i
    incr i
}
puts "Stopped at total = $total"

# break and continue
puts "Odd numbers under 10:"
set k 0
while {1} {
    incr k
    if {$k >= 10} {
        break
    }
    if {$k % 2 == 0} {
        continue
    }
    puts "  $k"
}
