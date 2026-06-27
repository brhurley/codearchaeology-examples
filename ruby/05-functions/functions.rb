# A simple method with no parameters
def greet
  "Hello from Ruby!"   # last expression is returned implicitly
end

# A method with two parameters
def add(a, b)
  a + b
end

# Parentheses are optional when calling
puts greet
puts add(3, 4)

# An explicit return can exit early
def absolute(n)
  return -n if n < 0
  n
end

puts absolute(-15)
puts absolute(15)
