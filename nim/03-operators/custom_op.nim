# Define a custom '**' operator for integer power
proc `**`(base, exp: int): int =
  result = 1
  for _ in 1 .. exp:
    result *= base

echo "2 ** 8  = ", 2 ** 8
echo "3 ** 4  = ", 3 ** 4

# Precedence demo: * binds tighter than +
echo "2 + 3 * 4   = ", 2 + 3 * 4    # 14, not 20
echo "(2 + 3) * 4 = ", (2 + 3) * 4  # 20
