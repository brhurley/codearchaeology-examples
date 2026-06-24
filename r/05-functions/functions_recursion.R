# Classic recursive factorial
factorial_r <- function(n) {
  if (n <= 1) {
    return(1)
  }
  n * factorial_r(n - 1)
}

print(factorial_r(5))

# Recursive Fibonacci
fib <- function(n) {
  if (n < 2) return(n)
  fib(n - 1) + fib(n - 2)
}

# Apply fib to a vector of indices with sapply
print(sapply(0:7, fib))
