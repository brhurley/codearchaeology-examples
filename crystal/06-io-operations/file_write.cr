# File.write creates (or overwrites) a file in one call
File.write("greeting.txt", "Hello from Crystal!\n")

# Open with mode "a" (append) and a block that auto-closes the file
File.open("greeting.txt", "a") do |file|
  file.puts "This line was appended."
  file.puts "Numbers work too: #{6 * 7}"
end

puts "Finished writing greeting.txt"
