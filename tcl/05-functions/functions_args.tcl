# Default parameters and variable arguments

# A default value is supplied as a {name value} pair.
# If "exp" is omitted, it defaults to 2.
proc power {base {exp 2}} {
    return [expr {$base ** $exp}]
}
puts "power 5    = [power 5]"
puts "power 2 10 = [power 2 10]"

# The special "args" parameter collects every remaining
# argument into a list of any length.
proc sum {args} {
    set total 0
    foreach n $args {
        set total [expr {$total + $n}]
    }
    return $total
}
puts "sum 1 2 3 4   = [sum 1 2 3 4]"
puts "sum (no args) = [sum]"
