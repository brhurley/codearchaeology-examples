# Functions in Julia

# Standard function definition with an explicit return
function add(a, b)
    return a + b
end

# The last expression is returned automatically—`return` is optional
function multiply(a, b)
    a * b
end

println("add(3, 4) = ", add(3, 4))
println("multiply(3, 4) = ", multiply(3, 4))

# Compact "assignment form" for short functions
square(x) = x^2
println("square(5) = ", square(5))

# Default positional arguments and keyword arguments.
# Arguments before the `;` are positional; those after are keywords.
function describe(name, greeting="Hello"; punctuation="!")
    return "$greeting, $name$punctuation"
end

println(describe("Julia"))
println(describe("Julia", "Hi"))
println(describe("Julia"; punctuation="?"))

# Returning multiple values as a tuple, then destructuring them
function min_max(numbers)
    return minimum(numbers), maximum(numbers)
end

lo, hi = min_max([4, 1, 7, 3])
println("lo = $lo, hi = $hi")

# Varargs: a parameter ending in `...` collects any number of arguments
function total(nums...)
    s = 0
    for n in nums
        s += n
    end
    return s
end

println("total(1, 2, 3, 4) = ", total(1, 2, 3, 4))
