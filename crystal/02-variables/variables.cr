# Integer types - Crystal infers Int32 by default for integer literals
age = 30
population = 8_000_000_000_i64   # i64 suffix for Int64
score = -15
byte_val = 255_u8                 # u8 suffix for unsigned 8-bit

# Float types - Float64 by default
pi = 3.14159
gravity = 9.81_f32               # f32 suffix for Float32

# Boolean
is_compiled = true
is_slow = false

# Character - single quotes for Char
first_letter = 'A'

# String - double quotes
language = "Crystal"
multiline = "Line one\nLine two"

# String interpolation
puts "Language: #{language}"
puts "Age: #{age}"
puts "Pi: #{pi}"
puts "Is compiled: #{is_compiled}"
puts "First letter: #{first_letter}"
puts "Population: #{population}"
