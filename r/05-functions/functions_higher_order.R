# Functions can be passed as arguments
apply_twice <- function(f, x) {
  f(f(x))
}

double <- function(x) x * 2
print(apply_twice(double, 5))   # double(double(5)) = 20

# Anonymous functions with the apply family
nums <- c(1, 2, 3, 4, 5)
squared <- sapply(nums, function(x) x ^ 2)
print(squared)

# R 4.1+ shorthand lambda syntax with \(x)
cubed <- sapply(nums, \(x) x ^ 3)
print(cubed)

# Closures: a function that returns a function
multiplier <- function(factor) {
  function(x) x * factor
}

triple <- multiplier(3)
print(triple(10))

# Filter and Reduce are built-in functional tools
print(Filter(function(x) x %% 2 == 0, nums))
print(Reduce(`+`, nums))
