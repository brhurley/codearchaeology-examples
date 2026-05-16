x = 10
y = 20

puts "x == y : #{x == y}"
puts "x != y : #{x != y}"
puts "x <  y : #{x < y}"
puts "x <= y : #{x <= y}"
puts "x >  y : #{x > y}"
puts "x >= y : #{x >= y}"
puts "x <=> y: #{x <=> y}"     # -1 because x < y

# Strings compare lexicographically
puts "\"apple\" <=> \"banana\": #{"apple" <=> "banana"}"

# Object identity vs value equality
s1 = "hello"
s2 = String.build { |io| io << "hello" }
puts "s1 == s2   : #{s1 == s2}"      # value equality
puts "s1.same?(s2): #{s1.same?(s2)}" # reference identity
