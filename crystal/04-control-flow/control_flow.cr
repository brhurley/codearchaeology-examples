temperature = 72

# Standard if / elsif / else
if temperature > 85
  puts "It's hot outside"
elsif temperature > 60
  puts "The weather is pleasant"
else
  puts "Bring a jacket"
end

# unless is the inverse of if
logged_in = false
unless logged_in
  puts "Please log in"
end

# if is an expression - it returns a value you can assign
score = 88
grade = if score >= 90
          "A"
        elsif score >= 80
          "B"
        else
          "C"
        end
puts "Grade: #{grade}"

# Ternary operator for simple two-way choices
age = 20
status = age >= 18 ? "adult" : "minor"
puts "Status: #{status}"

# Suffix (modifier) form for a single guarded statement
puts "Even temperature" if temperature.even?
