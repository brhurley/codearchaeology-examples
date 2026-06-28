# Variable scope in Tcl

set counter 0   ;# a global variable

# By default, assignments inside a proc are LOCAL.
proc tryLocal {} {
    set counter 99
    return $counter
}
puts "inside proc:  [tryLocal]"
puts "global still: $counter"

# "global" links the name to the global variable.
proc increment {} {
    global counter
    incr counter
}
increment
increment
puts "after two increments: $counter"

# "upvar" links a caller's variable to a local name,
# giving you pass-by-reference semantics.
proc double {varName} {
    upvar 1 $varName x
    set x [expr {$x * 2}]
}
set value 21
double value
puts "doubled value: $value"
