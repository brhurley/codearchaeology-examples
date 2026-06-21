# Recursion in Julia

# Factorial using the ternary operator for the base case
function factorial_rec(n)
    n <= 1 ? 1 : n * factorial_rec(n - 1)
end

# Fibonacci using an if block
function fib(n)
    if n < 2
        return n
    end
    return fib(n - 1) + fib(n - 2)
end

println("5! = ", factorial_rec(5))
println("10! = ", factorial_rec(10))
println("fib(10) = ", fib(10))

# Array comprehensions pair nicely with functions
fibs = [fib(n) for n in 0:9]
println("First 10 Fibonacci: ", fibs)
