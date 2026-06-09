# Operate on an entire vector without an explicit loop
numbers <- 1:10

# Square every element at once
squares <- numbers^2
print(paste(squares, collapse = " "))

# Keep only elements that satisfy a condition (logical subsetting)
evens <- numbers[numbers %% 2 == 0]
print(paste("Evens:", paste(evens, collapse = " ")))

# Reduce a whole vector to a single value - no accumulator loop
print(paste("Sum:", sum(numbers)))
