# 'exponent' defaults to 2 when the caller omits it
proc power(base: int, exponent: int = 2): int =
  result = 1
  for i in 1 .. exponent:
    result *= base

echo "power(5) = ", power(5)                          # uses default exponent
echo "power(2, 8) = ", power(2, 8)                    # positional arguments
echo "power(base = 3, exponent = 3) = ", power(base = 3, exponent = 3)
