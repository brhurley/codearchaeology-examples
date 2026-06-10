# case / when matching a range
grade = 85

case grade
when 90..100
  puts "Grade: A"
when 80...90   # ... excludes the upper bound (80 to 89)
  puts "Grade: B"
when 70...80
  puts "Grade: C"
else
  puts "Grade: F"
end

# case can match by type (class)
input = "hello"

case input
when Integer
  puts "Got a number"
when String
  puts "Got a string of length #{input.length}"
when Array
  puts "Got an array"
end

# case with no subject behaves like if/elsif and returns a value
hour = 14
greeting = case
           when hour < 12 then "Good morning"
           when hour < 18 then "Good afternoon"
           else "Good evening"
           end
puts greeting
