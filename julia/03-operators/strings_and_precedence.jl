# String concatenation with *
greeting = "Hello" * ", " * "World!"
println(greeting)

# Repetition with ^
println("ab"^3)             # ababab

# Precedence: * binds tighter than +
println(2 + 3 * 4)          # 14
println((2 + 3) * 4)        # 20

# ^ is right-associative
println(2^3^2)              # 2^(3^2) = 2^9 = 512

# Comparison binds tighter than &&
println(1 < 2 && 3 < 4)     # true
