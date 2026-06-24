# Default parameter values
power <- function(base, exponent = 2) {
  base ^ exponent
}

print(power(5))        # uses the default exponent of 2
print(power(2, 10))    # overrides the default

# Named arguments can be supplied in any order
describe <- function(name, age, city) {
  cat(name, "is", age, "years old and lives in", city, "\n")
}

describe(age = 30, city = "Auckland", name = "Grace")

# The ... (dots) parameter accepts a variable number of arguments
add_all <- function(...) {
  numbers <- c(...)
  sum(numbers)
}

print(add_all(1, 2, 3, 4, 5))
