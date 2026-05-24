# Precedence: ** is tightest, then * / // %, then + -
print("2 + 3 * 4      =", 2 + 3 * 4)        # * before +
print("(2 + 3) * 4    =", (2 + 3) * 4)      # parentheses override
print("2 ** 3 ** 2    =", 2 ** 3 ** 2)      # ** is right-associative
print("10 - 4 - 3     =", 10 - 4 - 3)       # - is left-associative

# Comparison and logical operators rank below arithmetic
print("2 + 2 == 4 and 3 > 1 :", 2 + 2 == 4 and 3 > 1)

# Exponentiation outranks unary minus
print("-2 ** 2       =", -2 ** 2)
