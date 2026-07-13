# Write a whole string in one call (creates or overwrites the file)
File.write("gemstones.txt", "ruby\npearl\nopal\n")

# Open in append mode ("a") with a block -- closed automatically
File.open("gemstones.txt", "a") do |file|
  file.puts "garnet"
  file.puts "topaz"
end

puts "Wrote #{File.size("gemstones.txt")} bytes to gemstones.txt"
