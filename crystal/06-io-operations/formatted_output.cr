# printf uses C-style format specifiers
printf("Name: %-10s Age: %3d\n", "Ada", 30)
printf("Pi is approximately %.4f\n", 3.14159265)
printf("Hex: %x, Octal: %o, Binary: %b\n", 255, 255, 255)

# sprintf returns the formatted string instead of printing it
label = sprintf("Item #%03d", 7)
puts label

# The % operator on a String is shorthand for sprintf
puts "Progress: %d%%" % 75

# Handle I/O errors with begin/rescue
begin
  File.read("does_not_exist.txt")
rescue File::NotFoundError
  puts "Could not read file: it does not exist."
end
