# Logical "types" in Tcl

# --- Numbers: integers and floating point ---
set i 42
set big 0xFF
set neg -7
set pi 3.14159
set sci 6.022e23

puts "Integer (decimal): $i"
puts "Integer (hex):     $big -> [expr {$big}]"
puts "Negative:          $neg"
puts "Float:             $pi"
puts "Scientific:        $sci"

# expr is the gateway to numeric evaluation
puts "i is integer? [string is integer -strict $i]"
puts "pi is integer? [string is integer -strict $pi]"
puts "pi is double?  [string is double  -strict $pi]"

# --- Strings ---
set greeting "Hello"
set quoted   {This {keeps} braces literal}
puts "Length of greeting: [string length $greeting]"
puts "Upper:              [string toupper $greeting]"
puts "Quoted literal:     $quoted"

# --- Booleans: any of these are valid true/false ---
set yes  true
set no   false
set one  1
set zero 0

puts "yes  -> [expr {$yes  ? {truthy} : {falsy}}]"
puts "zero -> [expr {$zero ? {truthy} : {falsy}}]"

# --- Lists: space-separated strings, the Tcl way ---
set fruits {apple banana cherry}
puts "Fruits:        $fruits"
puts "Length:        [llength $fruits]"
puts "First:         [lindex $fruits 0]"
puts "After append:  [lappend fruits date]"

# --- Dictionaries: key/value pairs since Tcl 8.5 ---
set person [dict create name Grace age 85 field "computer science"]
puts "Name:    [dict get $person name]"
puts "Age:     [dict get $person age]"
dict set person age 86
puts "Updated: [dict get $person age]"
