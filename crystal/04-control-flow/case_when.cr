# Matching specific values (multiple values per branch)
day = "Saturday"
case day
when "Saturday", "Sunday"
  puts "It's the weekend!"
when "Monday"
  puts "Back to work"
else
  puts "A regular weekday"
end

# case as an expression, matching against ranges
number = 7
description = case number
             when 0
               "zero"
             when 1..9
               "single digit"
             when 10..99
               "double digit"
             else
               "large number"
             end
puts "#{number} is a #{description}"

# case matching on type - narrows each element of a union type
items = [42, "hello", 3.14]
items.each do |item|
  case item
  when Int32
    puts "Integer: #{item}"
  when String
    puts "String: #{item}"
  when Float64
    puts "Float: #{item}"
  end
end
