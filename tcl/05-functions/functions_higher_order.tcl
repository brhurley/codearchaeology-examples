# Higher-order functions in Tcl

# Pass a procedure's NAME and call it indirectly with $fn.
proc applyTwice {fn x} {
    return [$fn [$fn $x]]
}
proc inc {n} { return [expr {$n + 1}] }
puts "applyTwice inc 5 = [applyTwice inc 5]"

# Anonymous functions: a {params body} list run with "apply".
set sq {x {expr {$x * $x}}}
puts "apply lambda 7  = [apply $sq 7]"

# A generic "map" that applies a lambda to every list element.
proc map {lambda list} {
    set result {}
    foreach item $list {
        lappend result [apply $lambda $item]
    }
    return $result
}
puts "map square: [map {x {expr {$x * $x}}} {1 2 3 4 5}]"
