# Variable assignment - no keywords needed
x = 42
pi_approx = 3.14159
name = "Julia"
is_fast = true

# Check types with typeof()
println("x: $x ($(typeof(x)))")
println("pi_approx: $pi_approx ($(typeof(pi_approx)))")
println("name: $name ($(typeof(name)))")
println("is_fast: $is_fast ($(typeof(is_fast)))")

println()

# Integer types - Julia chooses Int64 on 64-bit systems
a = 10              # Int64
b = 0xff            # UInt8 (hexadecimal literal)
c = 0b1010          # UInt8 (binary literal)
big_num = 10_000_000  # Underscores for readability

println("a: $a ($(typeof(a)))")
println("b: $b ($(typeof(b)))")
println("c: $c ($(typeof(c)))")
println("big_num: $big_num ($(typeof(big_num)))")

println()

# Floating-point types
f1 = 1.0            # Float64 (default)
f2 = 1.0f0          # Float32 (note the 'f' suffix)
f3 = 2.5e3          # Scientific notation: 2500.0

println("f1: $f1 ($(typeof(f1)))")
println("f2: $f2 ($(typeof(f2)))")
println("f3: $f3 ($(typeof(f3)))")

println()

# Special numeric values
println("Infinity: $(Inf)")
println("Negative infinity: $(-Inf)")
println("Not a number: $(NaN)")
println("Machine epsilon: $(eps(Float64))")

println()

# Characters vs Strings
ch = 'A'             # Char (single quotes)
str = "A"            # String (double quotes)
println("'A' is $(typeof(ch)), \"A\" is $(typeof(str))")

println()

# Nothing - Julia's null equivalent
result = nothing
println("nothing: $result ($(typeof(result)))")
