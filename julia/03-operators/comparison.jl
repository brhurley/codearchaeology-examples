println(3 == 3)
println(3 != 4)
println(3 < 4)
println(3 >= 3)

# Chained comparisons read like math
x = 5
println(1 < x < 10)        # true
println(0 < x < 3)         # false

# === checks identity (same object), == checks value
println(1 == 1.0)          # true (numerically equal)
println(1 === 1.0)         # false (different types)

# isapprox / ≈ for floating-point fuzzy equality
println(0.1 + 0.2 == 0.3)
println(0.1 + 0.2 ≈ 0.3)
