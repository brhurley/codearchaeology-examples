# A regular String can never be nil - the compiler enforces this
name : String = "Crystal"
# name = nil  # Compile error: can't assign Nil to String

# A nilable String uses the union type String | Nil (shorthand: String?)
maybe_name : String? = nil
puts "maybe_name is nil: #{maybe_name.nil?}"

maybe_name = "Now it has a value"
puts "maybe_name: #{maybe_name}"

# To use a nilable value, you must handle the nil case
# The compiler won't let you call String methods on String? without checking
if maybe_name
  # Inside this block, the compiler knows maybe_name is String (not nil)
  puts "Uppercase: #{maybe_name.upcase}"
end

# The not_nil! method asserts the value is not nil (raises at runtime if wrong)
safe_name = maybe_name.not_nil!
puts "Safe: #{safe_name}"

# Union types aren't limited to nil - a variable can hold multiple types
int_or_string : Int32 | String = 42
puts "Value: #{int_or_string}, type: #{typeof(int_or_string)}"

int_or_string = "now it's a string"
puts "Value: #{int_or_string}, type: #{typeof(int_or_string)}"

# Type narrowing with case/when
case int_or_string
when Int32
  puts "Got an integer: #{int_or_string * 2}"
when String
  puts "Got a string: #{int_or_string.upcase}"
end
