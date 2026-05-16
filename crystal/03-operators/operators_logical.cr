t = true
f = false

puts "t && f : #{t && f}"
puts "t || f : #{t || f}"
puts "!t     : #{!t}"

# Short-circuit returns the operand, not always a Bool
name = nil
display = name || "anonymous"
puts "display = #{display}"

# Truthiness: only nil and false are falsy
puts "0 is truthy   : #{!!0}"
puts "\"\" is truthy: #{!!""}"

# Bitwise operators on Int32
puts "0b1100 & 0b1010 = #{(0b1100 & 0b1010).to_s(2).rjust(4, '0')}"
puts "0b1100 | 0b1010 = #{(0b1100 | 0b1010).to_s(2).rjust(4, '0')}"
puts "0b1100 ^ 0b1010 = #{(0b1100 ^ 0b1010).to_s(2).rjust(4, '0')}"
puts "1 << 4          = #{1 << 4}"
puts "32 >> 2         = #{32 >> 2}"
