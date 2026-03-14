# Numeric conversions
int_val = 42
float_val = 3.99
str_val = "100"

# Int to Float
as_float = int_val.to_f
puts "Int to Float: #{int_val} => #{as_float}"

# Float to Int - truncates (does not round)
as_int = float_val.to_i
puts "Float to Int (truncates): #{float_val} => #{as_int}"

# Int to String
as_str = int_val.to_s
puts "Int to String: #{int_val} => \"#{as_str}\""

# String to Int - returns Int32
parsed_int = str_val.to_i
puts "String to Int: \"#{str_val}\" => #{parsed_int}"

# String to Float
"3.14".to_f.tap { |f| puts "String to Float: #{f}" }

# Safe parsing - to_i? returns Int32? (nil if parsing fails)
bad_parse = "not_a_number".to_i?
puts "Bad parse result: #{bad_parse.nil? ? "nil (safe failure)" : bad_parse}"

good_parse = "256".to_i?
puts "Good parse result: #{good_parse}"

# Rounding a Float
puts "Round 3.99: #{float_val.round}"
puts "Floor 3.99: #{float_val.floor.to_i}"
puts "Ceil 3.01: #{3.01.ceil.to_i}"
