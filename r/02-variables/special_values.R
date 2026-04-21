# The four special values
missing_value <- NA
empty_value <- NULL
not_a_number <- NaN
infinity <- Inf

# Each has a dedicated predicate for testing
print(is.na(missing_value))
print(is.null(empty_value))
print(is.nan(not_a_number))
print(is.infinite(infinity))

# NA propagates: anything combined with NA is usually NA
print(NA + 1)
print(NA == NA)

# In R, single values are length-1 vectors
age <- 30
print(length(age))

# Create a proper vector with c()
numbers <- c(1, 2, 3, 4, 5)
print(numbers)
print(length(numbers))
print(class(numbers))

# Vectors work element-wise in arithmetic
doubled <- numbers * 2
print(doubled)

# Character vectors work the same way
fruits <- c("apple", "banana", "cherry")
print(fruits)
print(length(fruits))
