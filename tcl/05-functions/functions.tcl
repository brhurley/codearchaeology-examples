# Functions (procedures) in Tcl

# A simple procedure with two parameters
proc add {a b} {
    return [expr {$a + $b}]
}

# Call it just like any built-in command
puts "add 3 4 = [add 3 4]"

# A procedure that returns a string
proc greet {name} {
    return "Hello, $name!"
}
puts [greet "Tcl"]

# An explicit return is optional - the last command's
# result automatically becomes the return value
proc square {x} {
    expr {$x * $x}
}
puts "square 5 = [square 5]"
