begin
  contents = File.read("missing.txt")
  puts contents
rescue Errno::ENOENT
  puts "Error: missing.txt does not exist"
ensure
  puts "Cleanup always runs"
end

# Check before opening to avoid the exception entirely
if File.exist?("gemstones.txt")
  puts "gemstones.txt is #{File.size("gemstones.txt")} bytes"
else
  puts "gemstones.txt not found"
end
