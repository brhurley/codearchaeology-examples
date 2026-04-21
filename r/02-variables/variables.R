# Variables and Types in R

# The <- operator is idiomatic R assignment
age <- 30
height <- 5.9
name <- "Ada"
is_student <- TRUE

# Print each variable
print(age)
print(height)
print(name)
print(is_student)

# Check the class (user-facing type) of each
print(class(age))
print(class(height))
print(class(name))
print(class(is_student))

# Integer requires the L suffix; otherwise R stores as double
count <- 100L
print(count)
print(class(count))

# = also works, though <- is strongly preferred in R style
pi_value = 3.14159
print(pi_value)
