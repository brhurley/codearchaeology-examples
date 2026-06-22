# Factorial: n! = n * (n-1)!
proc factorial(n: int): int =
  if n <= 1:
    1
  else:
    n * factorial(n - 1)

# Fibonacci: each number is the sum of the previous two
proc fib(n: int): int =
  if n < 2:
    n
  else:
    fib(n - 1) + fib(n - 2)

echo "factorial(5) = ", factorial(5)
echo "fib(10) = ", fib(10)
