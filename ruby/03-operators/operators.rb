# Operators in Ruby
# A tour of arithmetic, comparison, logical, assignment, and string operators

a = 17
b = 5

# --- Arithmetic Operators ---
puts "== Arithmetic =="
puts "a + b  = #{a + b}"
puts "a - b  = #{a - b}"
puts "a * b  = #{a * b}"
puts "a / b  = #{a / b}"      # integer division truncates
puts "a % b  = #{a % b}"      # modulo (remainder)
puts "a ** b = #{a ** b}"     # exponentiation
puts "10.0 / 3 = #{10.0 / 3}" # a float makes the result a float
puts

# --- Comparison Operators ---
puts "== Comparison =="
puts "a == b   -> #{a == b}"
puts "a != b   -> #{a != b}"
puts "a > b    -> #{a > b}"
puts "a < b    -> #{a < b}"
puts "5 <=> 10 -> #{5 <=> 10}"  # spaceship: -1, 0, or 1

# --- Logical Operators ---
sunny = true
warm = false
puts
puts "== Logical =="
puts "sunny && warm -> #{sunny && warm}"
puts "sunny || warm -> #{sunny || warm}"
puts "!sunny        -> #{!sunny}"

# --- Assignment Operators ---
count = 10
count += 5   # 15
count -= 3   # 12
count *= 2   # 24
puts
puts "== Assignment =="
puts "count after +=5, -=3, *=2 -> #{count}"

# Conditional assignment: assign only if currently nil or false
name = nil
name ||= "Anonymous"
puts "name ||= \"Anonymous\" -> #{name}"

# --- String Operators ---
first = "Ruby"
second = "Rocks"
combined = first + " " + second  # concatenation with +
repeated = "ab" * 3              # repetition with *
puts
puts "== String =="
puts "concatenation -> #{combined}"
puts "repetition    -> #{repeated}"
puts "interpolation -> #{first} has #{first.length} letters"

# --- Operator Precedence ---
puts
puts "== Precedence =="
puts "2 + 3 * 4   = #{2 + 3 * 4}"    # * binds tighter than +
puts "(2 + 3) * 4 = #{(2 + 3) * 4}"  # parentheses force order
