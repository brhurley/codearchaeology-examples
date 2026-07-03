# Read a line of text from standard input
print "What is your name? "
name = gets

# gets returns String? (String or Nil) - handle the nil case
if name
  name = name.chomp # strip the trailing newline
  puts "Hello, #{name}!"
else
  puts "No input received."
end

# Read a line and convert it to a number
print "Enter your age: "
age_input = gets
if age_input
  age = age_input.chomp.to_i
  puts "Next year you will be #{age + 1}."
end
