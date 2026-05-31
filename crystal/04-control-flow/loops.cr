# while loop - runs while the condition is true
count = 1
while count <= 3
  puts "Count: #{count}"
  count += 1
end

# until loop - runs until the condition becomes true
countdown = 3
until countdown == 0
  puts "T-minus #{countdown}"
  countdown -= 1
end

# times - repeat a block a fixed number of times (index starts at 0)
3.times do |i|
  puts "Iteration #{i}"
end

# each over a range
(1..3).each do |n|
  puts "Number #{n}"
end

# each over an array
["red", "green", "blue"].each do |color|
  puts "Color: #{color}"
end

# break and next for loop control
(1..10).each do |n|
  next if n.odd?  # skip odd numbers
  break if n > 6  # stop once we pass 6
  puts "Even: #{n}"
end
