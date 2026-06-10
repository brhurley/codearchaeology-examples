# Control Flow in Ruby

# if / elsif / else
temperature = 72

if temperature > 85
  puts "It's hot outside"
elsif temperature > 60
  puts "It's a pleasant day"
else
  puts "Bring a jacket"
end

# unless - reads as "if not"
logged_in = false
unless logged_in
  puts "Please log in to continue"
end

# Statement modifiers (condition comes after the expression)
puts "Access granted" if temperature > 60
puts "Warning!" unless logged_in

# Ternary operator: condition ? if_true : if_false
age = 20
status = age >= 18 ? "adult" : "minor"
puts "You are an #{status}"
