# puts appends a newline automatically
puts "puts appends a newline automatically"

# print does not append a newline
print "print does not append a newline"
print " - so this continues the same line\n"

# String interpolation works inside any string
name = "Crystal"
version = 1.14
puts "Language: #{name}, version: #{version}"

# p and pp print the *inspected* form (quotes, escapes, structure)
p "a string with \"quotes\""
p [1, 2, 3]
pp({"a" => 1, "b" => 2})
