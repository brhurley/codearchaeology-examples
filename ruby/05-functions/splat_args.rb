# *numbers collects all positional arguments into an array
def sum(*numbers)
  numbers.reduce(0) { |total, n| total + n }
end

puts sum(1, 2, 3)
puts sum(10, 20, 30, 40, 50)
puts sum   # no arguments -> empty array -> 0

# **options collects keyword arguments into a hash
def configure(**options)
  options.map { |key, value| "#{key}=#{value}" }.join(", ")
end

puts configure(host: "localhost", port: 3000, ssl: true)
