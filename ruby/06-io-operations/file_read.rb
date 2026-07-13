# Read the entire file into one string
contents = File.read("gemstones.txt")
puts "The file has #{contents.length} characters"

# Read into an array of lines, stripping newlines
lines = File.readlines("gemstones.txt", chomp: true)
puts "First gemstone: #{lines.first}"
puts "Total gemstones: #{lines.length}"

# Stream line by line without loading the whole file
File.foreach("gemstones.txt").with_index(1) do |line, number|
  puts "#{number}: #{line.chomp}"
end
