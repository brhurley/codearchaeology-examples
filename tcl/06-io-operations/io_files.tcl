# File I/O in Tcl: write, append, read, and handle errors

# Open for writing ("w" creates or truncates the file)
set out [open "journal.txt" w]
puts $out "First entry"
puts $out "Second entry"
close $out

# Open for appending ("a" adds to the end)
set out [open "journal.txt" a]
puts $out "Third entry"
close $out

# Slurp the whole file at once with read
set in [open "journal.txt" r]
set contents [read $in]
close $in
puts "--- Whole file ---"
puts -nonewline $contents

# Read line by line: gets returns -1 at end of file
puts "--- Line by line ---"
set in [open "journal.txt" r]
set lineno 0
while {[gets $in line] >= 0} {
    incr lineno
    puts "$lineno: $line"
}
close $in

# I/O errors raise exceptions; catch traps them
if {[catch {open "missing.txt" r} err]} {
    puts "Could not open file: $err"
}

# The file command inspects and manipulates the filesystem
file delete journal.txt
puts "File exists after delete: [file exists journal.txt]"
