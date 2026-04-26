# Local variables — lowercase, no declaration needed
age = 30
name = "Alice"
pi = 3.14159
is_happy = true
nothing = nil

puts "Name: #{name}"
puts "Age: #{age}"
puts "Pi: #{pi}"
puts "Happy: #{is_happy}"
puts "Nothing: #{nothing.inspect}"

# Constants — uppercase (Ruby warns if you reassign them)
MAX_SIZE = 100
LANGUAGE = "Ruby"
puts "Max: #{MAX_SIZE}, Language: #{LANGUAGE}"

# Symbols — lightweight, immutable identifiers
status = :active
role = :admin
puts "Status: #{status}, Role: #{role}"

# Ruby's type system: everything is an object
puts age.class        # Integer
puts name.class       # String
puts pi.class         # Float
puts is_happy.class   # TrueClass
puts nothing.class    # NilClass
puts status.class     # Symbol
