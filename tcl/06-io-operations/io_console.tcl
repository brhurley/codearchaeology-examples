# Formatted console output in Tcl
puts "A plain line from puts"

# -nonewline suppresses the trailing newline
puts -nonewline "These two pieces... "
puts "join on one line"

# format works like C's printf and returns a string
set language "Tcl"
set year 1988
puts [format "%-8s appeared in %d" $language $year]

# Width, precision, and zero-padding
puts [format "Pi is roughly %8.4f" 3.14159265]
puts [format "Hex: %x  Octal: %o  Padded: %05d" 255 8 42]

# puts accepts a channel name; stderr is always open
puts stderr "Diagnostics go to standard error"
