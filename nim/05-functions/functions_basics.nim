# A procedure using the implicit 'result' variable
proc add(a: int, b: int): int =
  result = a + b

# Parameters of the same type can be grouped; the last
# expression in the body becomes the return value
proc multiply(a, b: int): int =
  a * b

# A procedure with no return type performs an action only
proc greet(name: string) =
  echo "Hello, ", name, "!"

echo "add(3, 4) = ", add(3, 4)
echo "multiply(5, 6) = ", multiply(5, 6)
greet("Nim")

# Uniform Function Call Syntax: a.add(b) is the same as add(a, b)
echo "10.add(5) = ", 10.add(5)
