# A method that yields to a block, running it 3 times
def repeat(times)
  i = 1
  while i <= times
    yield i   # hand control to the block, passing the counter
    i += 1
  end
end

repeat(3) { |n| puts "Iteration #{n}" }

# A lambda: a first-class function stored in a variable
square = ->(x) { x * x }
puts square.call(6)

# Higher-order: pass a lambda to a method via &
def apply_twice(value, &operation)
  operation.call(operation.call(value))
end

puts apply_twice(3, &square)   # square(square(3)) = 81

# Built-in iterators take blocks directly
doubled = [1, 2, 3, 4].map { |n| n * 2 }
puts doubled.inspect

evens = [1, 2, 3, 4, 5, 6].select { |n| n.even? }
puts evens.inspect
