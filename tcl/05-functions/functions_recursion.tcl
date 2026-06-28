# Recursion in Tcl

# Classic factorial
proc factorial {n} {
    if {$n <= 1} {
        return 1
    }
    return [expr {$n * [factorial [expr {$n - 1}]]}]
}
puts "factorial 5  = [factorial 5]"
puts "factorial 10 = [factorial 10]"

# Recursive Fibonacci
proc fib {n} {
    if {$n < 2} {
        return $n
    }
    return [expr {[fib [expr {$n - 1}]] + [fib [expr {$n - 2}]]}]
}

# Build a list of the first 10 Fibonacci numbers
set fibs {}
for {set i 0} {$i < 10} {incr i} {
    lappend fibs [fib $i]
}
puts "first 10 fib: $fibs"
