# Variables and Types in Tcl

# --- Basic assignment ---
set count 10
set price 19.95
set name "Ada"
set message {Tcl is "fun"}

puts "count   = $count"
puts "price   = $price"
puts "name    = $name"
puts "message = $message"

# --- set with no value reads the variable ---
puts "set returns: [set count]"

# --- Reassignment: same command, no special syntax ---
set count 42
puts "count   = $count (after reassignment)"

# --- unset removes a variable ---
set temp "delete me"
unset temp
puts "temp exists? [info exists temp]"
