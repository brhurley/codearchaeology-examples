# Build an array of squares
squares = [x^2 for x in 1:5]
println(squares)

# Comprehension with a filter (only even numbers, then triple them)
evens_tripled = [3x for x in 1:10 if iseven(x)]
println(evens_tripled)

# Nested comprehension builds a 3x3 multiplication grid
grid = [i * j for i in 1:3, j in 1:3]
println(grid)

# Generators (no brackets) avoid allocating an intermediate array
total = sum(x^2 for x in 1:100)
println("Sum of squares 1..100 = $total")
