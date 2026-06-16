# A function with a typed parameter and return type
def greet(name : String) : String
  "Hello, #{name}!"   # last expression is returned automatically
end

# Multiple parameters
def add(a : Int32, b : Int32) : Int32
  a + b
end

# Annotations are optional - the compiler infers the types
def multiply(a, b)
  a * b
end

# An explicit early return using a one-line guard
def absolute(n : Int32) : Int32
  return -n if n < 0
  n
end

puts greet("Crystal")
puts add(3, 4)
puts multiply(6, 7)
puts absolute(-15)
