# Inferred types - compiler figures these out
count = 42           # Int32
ratio = 0.5          # Float64
name = "Crystal"     # String
active = true        # Bool

# Explicit type annotations
explicit_int : Int32 = 100
explicit_float : Float64 = 2.71828
explicit_str : String = "typed"

# Type of a variable - useful for understanding inference
puts typeof(count)          # => Int32
puts typeof(ratio)          # => Float64
puts typeof(name)           # => String
puts typeof(explicit_float) # => Float64

# Crystal also supports underscores in numeric literals for readability
big_number = 1_000_000
hex_value = 0xFF       # => 255
binary_val = 0b1010    # => 10
octal_val = 0o17       # => 15

puts "Big number: #{big_number}"
puts "Hex 0xFF: #{hex_value}"
puts "Binary 0b1010: #{binary_val}"
puts "Octal 0o17: #{octal_val}"
