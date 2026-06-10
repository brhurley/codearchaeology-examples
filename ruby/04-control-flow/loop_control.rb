# break - exit the loop early
(1..10).each do |n|
  break if n > 5
  puts "break demo: #{n}"
end

# next - skip the rest of this iteration
(1..6).each do |n|
  next if n.even?
  puts "odd: #{n}"
end

# Accumulate values, stopping once a threshold is reached
sum = 0
[10, 20, 30, 40].each do |value|
  sum += value
  break if sum >= 50
end
puts "Sum stopped at: #{sum}"

# The loop keyword repeats until break is called
attempts = 0
loop do
  attempts += 1
  break if attempts == 3
end
puts "Total attempts: #{attempts}"
