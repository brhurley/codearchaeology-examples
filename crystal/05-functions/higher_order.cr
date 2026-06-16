# A method that takes a block and yields to it
def repeat(times : Int32, &)
  times.times { |i| yield i }
end

# A method that takes a Proc (a first-class function) as a parameter
def apply_twice(value : Int32, operation : Int32 -> Int32) : Int32
  operation.call(operation.call(value))
end

# A Proc literal - a function stored in a variable
double = ->(x : Int32) { x * 2 }

repeat(3) do |i|
  puts "Iteration #{i}"
end

puts apply_twice(5, double)   # double(double(5)) => 20

# Built-in higher-order methods on collections
numbers = [1, 2, 3, 4, 5]
evens = numbers.select { |n| n.even? }   # keep elements where the block is true
squared = numbers.map { |n| n * n }      # transform each element

puts evens
puts squared
