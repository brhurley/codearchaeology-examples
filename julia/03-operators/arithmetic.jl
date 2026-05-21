a = 17
b = 5

println("a + b = ", a + b)
println("a - b = ", a - b)
println("a * b = ", a * b)
println("a / b = ", a / b)     # always returns Float64
println("a ÷ b = ", a ÷ b)     # integer division (also: div(a, b))
println("a % b = ", a % b)     # remainder (also: rem(a, b))
println("a ^ b = ", a ^ b)     # exponentiation (not bitwise XOR)

# Unary minus
println(-a)

# Numeric literal coefficients: 2x means 2 * x
x = 10
println(2x + 3)
