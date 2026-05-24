# Comparison operators return logical values
x <- 8
y <- 3

print(x > y)    # greater than
print(x == y)   # equality
print(x != y)   # inequality

# Scalar logical operators (single TRUE/FALSE values)
print(TRUE & FALSE)   # logical AND
print(TRUE | FALSE)   # logical OR
print(!TRUE)          # logical NOT

# Vectorized comparisons produce logical vectors
vec <- c(2, 5, 8, 11)
print(vec > 5)            # which elements exceed 5?
print(vec > 2 & vec < 11) # combine two conditions element-wise
