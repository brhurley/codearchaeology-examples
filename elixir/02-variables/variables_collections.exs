# Lists - linked lists, good for prepending
numbers = [1, 2, 3, 4, 5]
mixed = [1, "two", :three, 4.0]
IO.puts("numbers: #{inspect(numbers)}")
IO.puts("mixed: #{inspect(mixed)}")

# List operations create new lists (immutability)
prepended = [0 | numbers]
concatenated = numbers ++ [6, 7]
IO.puts("prepended: #{inspect(prepended)}")
IO.puts("concatenated: #{inspect(concatenated)}")

# Tuples - fixed-size, contiguous memory, fast access by index
point = {10, 20}
rgb = {255, 128, 0}
IO.puts("point: #{inspect(point)}")
IO.puts("rgb element 1: #{elem(rgb, 1)}")
IO.puts("tuple size: #{tuple_size(rgb)}")

# Maps - key-value pairs
user = %{name: "Alice", age: 30, active: true}
IO.puts("user: #{inspect(user)}")
IO.puts("name: #{user.name}")
IO.puts("age: #{user[:age]}")

# Maps with non-atom keys
scores = %{"math" => 95, "science" => 88}
IO.puts("math score: #{scores["math"]}")

# Updating maps (creates a new map)
updated_user = %{user | age: 31}
IO.puts("updated user: #{inspect(updated_user)}")

# Keyword lists - ordered list of two-element tuples with atom keys
options = [timeout: 5000, retries: 3, verbose: true]
IO.puts("\noptions: #{inspect(options)}")
IO.puts("timeout: #{options[:timeout]}")

# Ranges
range = 1..10
IO.puts("range: #{inspect(range)}")
IO.puts("5 in range?: #{5 in range}")

# MapSets
set = MapSet.new([1, 2, 3, 2, 1])
IO.puts("set: #{inspect(set)}")
IO.puts("set has 2?: #{MapSet.member?(set, 2)}")

# Type conversions
IO.puts("\n--- Type Conversions ---")
IO.puts("String to integer: #{String.to_integer("42")}")
IO.puts("String to float: #{String.to_float("3.14")}")
IO.puts("Integer to string: #{Integer.to_string(42)}")
IO.puts("Integer to float: #{42 / 1}")
IO.puts("Float to integer (trunc): #{trunc(3.7)}")
IO.puts("Float to integer (round): #{round(3.7)}")
IO.puts("Atom to string: #{Atom.to_string(:hello)}")
IO.puts("String to atom: #{inspect(String.to_atom("hello"))}")
