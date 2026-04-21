# Explicit conversion: string to number
num_str <- "42"
converted <- as.numeric(num_str)
print(converted)
print(class(converted))

# Explicit conversion: number to string
age <- 30
age_str <- as.character(age)
print(age_str)
print(class(age_str))

# Logical coerces to numeric in arithmetic (TRUE = 1, FALSE = 0)
total <- TRUE + TRUE + FALSE
print(total)

# Automatic coercion inside c(): logical -> numeric
mixed_num <- c(1, 2, TRUE, FALSE)
print(mixed_num)
print(class(mixed_num))

# Strong typing: an invalid conversion yields NA with a warning, not an error
bad <- suppressWarnings(as.numeric("not a number"))
print(bad)
