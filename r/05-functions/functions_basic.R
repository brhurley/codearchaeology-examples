# A function with an explicit return value
greet <- function(name) {
  message <- paste("Hello,", name)
  return(message)
}

# The last evaluated expression is returned automatically
square <- function(x) {
  x * x
}

print(greet("Ada"))
print(square(9))

# Functions can return multiple values bundled in a list
stats <- function(numbers) {
  list(total = sum(numbers), mean = mean(numbers))
}

result <- stats(c(2, 4, 6, 8))
cat("Total:", result$total, "\n")
cat("Mean:", result$mean, "\n")
