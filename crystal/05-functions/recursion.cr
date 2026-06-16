# factorial(n) = n * (n-1) * ... * 1
def factorial(n : Int32) : Int32
  return 1 if n <= 1          # base case stops the recursion
  n * factorial(n - 1)        # recursive case
end

# Each Fibonacci number is the sum of the previous two
def fibonacci(n : Int32) : Int32
  return n if n < 2           # base cases: fib(0) = 0, fib(1) = 1
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts factorial(5)
puts fibonacci(10)
