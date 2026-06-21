# Higher-Order Functions in Julia

# Anonymous function assigned to a variable
double = x -> x * 2
println("double(21) = ", double(21))

numbers = [1, 2, 3, 4, 5, 6]

# map applies a function to every element
squared = map(x -> x^2, numbers)
println("squared = ", squared)

# filter keeps elements where the predicate is true
evens = filter(x -> x % 2 == 0, numbers)
println("evens = ", evens)

# reduce combines elements with a binary function
total = reduce(+, numbers)
println("sum = ", total)

# Functions can be passed as arguments
function apply_twice(f, x)
    return f(f(x))
end

println("apply_twice(double, 5) = ", apply_twice(double, 5))

# Closures: a function that returns a function, capturing `factor`
function multiplier(factor)
    return x -> x * factor
end

triple = multiplier(3)
println("triple(10) = ", triple(10))

# The do-block passes a multi-line function as the first argument
result = map([1, 2, 3]) do x
    x^2 + 1
end
println("do-block result = ", result)
