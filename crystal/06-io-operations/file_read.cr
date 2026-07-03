# First create a file so this example is self-contained
File.write("notes.txt", "line 1\nline 2\nline 3\n")

# Read the entire file into a single String
contents = File.read("notes.txt")
puts "Whole file:"
puts contents

# Stream the file one line at a time (newlines are chomped)
puts "Line by line:"
File.each_line("notes.txt") do |line|
  puts "-> #{line}"
end

# Collect all lines into an Array(String)
lines = File.read_lines("notes.txt")
puts "The file has #{lines.size} lines."
