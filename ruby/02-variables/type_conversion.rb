# Integer conversions
n = 42
puts n.to_f      # Float:  42.0
puts n.to_s      # String: "42"
puts n.to_r      # Rational: 42/1

# Float to Integer truncates (does not round)
f = 3.99
puts f.to_i      # 3
puts f.ceil      # 4 (rounds up)
puts f.round     # 4 (rounds to nearest)

# String to number
puts "100".to_i       # 100
puts "3.14".to_f      # 3.14
puts "42abc".to_i     # 42  (stops at first non-numeric character)
puts "abc".to_i       # 0   (no leading digits → 0)

# Runtime type checks
value = "hello"
puts value.is_a?(String)            # true
puts value.is_a?(Integer)           # false
puts value.respond_to?(:upcase)     # true  (duck typing check)
puts value.respond_to?(:push)       # false (strings don't have push)

# Kernel#Integer and Kernel#Float raise errors on bad input
# (unlike to_i/to_f which silently return 0/0.0)
begin
  Integer("abc")
rescue ArgumentError => e
  puts "Error: #{e.message}"
end
