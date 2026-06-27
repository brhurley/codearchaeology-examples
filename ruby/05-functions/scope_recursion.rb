message = "outer scope"

def show_scope
  # The outer `message` is NOT visible here; this is a separate local
  message = "inner scope"
  puts message
end

show_scope
puts message   # unchanged: methods cannot see or modify outer locals

# Classic recursion: factorial
def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

puts factorial(5)

# Recursion: nth Fibonacci number
def fib(n)
  return n if n < 2
  fib(n - 1) + fib(n - 2)
end

puts fib(10)
