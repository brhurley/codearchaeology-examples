# A 'var' parameter is modified in place in the caller
proc double(x: var int) =
  x = x * 2

var n = 21
double(n)
echo "After double: ", n

# 'func' is shorthand for 'proc' with no side effects
func square(x: int): int =
  x * x

echo "square(9) = ", square(9)
