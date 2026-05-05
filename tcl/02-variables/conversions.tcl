# Type conversion in Tcl

# --- String to number: just use it in expr ---
set s "123"
set n [expr {$s + 0}]
puts "string \"$s\" -> integer $n  ([string is integer -strict $n])"

set f [expr {"3.14" * 1.0}]
puts "string \"3.14\" -> double  $f  ([string is double -strict $f])"

# --- Number to string: format it ---
set value 255
puts "Decimal: [format %d   $value]"
puts "Hex:     [format %#x  $value]"
puts "Octal:   [format %#o  $value]"
puts "Binary:  [format %b   $value]"
puts "Padded:  [format %05d $value]"
puts "Float:   [format %.3f [expr {$value / 7.0}]]"

# --- scan parses strings into values ---
scan "age=42" "age=%d" age
puts "Parsed age: $age"

# --- Integer / float coercion happens automatically in expr ---
set mixed [expr {3 + 2.5}]
puts "3 + 2.5 = $mixed (now a double)"

# --- Lists and strings are interchangeable ---
set csv "red,green,blue"
set words [split $csv ","]
puts "Split list: $words  (length [llength $words])"
puts "Rejoined:   [join $words { | }]"
