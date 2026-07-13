puts "What is your name?"
name = gets.chomp

puts "How many years have you used Ruby?"
years = gets.chomp.to_i

puts "Hello, #{name}!"
puts "That's about #{years * 12} months of Ruby."
