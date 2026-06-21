-- Factorial: n! = n * (n-1) * ... * 1
local function factorial(n)
    if n <= 1 then
        return 1
    end
    return n * factorial(n - 1)
end

print("5! =", factorial(5))
print("10! =", factorial(10))

-- Fibonacci sequence via recursion
local function fib(n)
    if n < 2 then
        return n
    end
    return fib(n - 1) + fib(n - 2)
end

for i = 0, 9 do
    io.write(fib(i), " ")
end
print()
