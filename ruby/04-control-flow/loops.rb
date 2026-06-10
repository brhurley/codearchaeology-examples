# while loop - runs while the condition is true
count = 1
while count <= 3
  puts "while: #{count}"
  count += 1
end

# until loop - runs while the condition is false
countdown = 3
until countdown.zero?
  puts "until: #{countdown}"
  countdown -= 1
end

# each - the idiomatic Ruby way to iterate a collection
["red", "green", "blue"].each do |color|
  puts "Color: #{color}"
end

# times - repeat an action a fixed number of times
3.times { |i| puts "times: #{i}" }

# Range with each
(1..3).each { |n| puts "range: #{n}" }
