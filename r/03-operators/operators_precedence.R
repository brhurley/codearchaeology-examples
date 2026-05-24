# Precedence: multiplication before addition
print(2 + 3 * 4)     # 3*4 evaluated first
print((2 + 3) * 4)   # parentheses force addition first

# Exponentiation is right-associative
print(2 ^ 3 ^ 2)     # evaluated as 2 ^ (3 ^ 2) = 2 ^ 9

# The colon operator creates integer sequences
print(1:5)

# The %in% operator tests membership
print(3 %in% c(1, 2, 3))
print(7 %in% 1:5)
