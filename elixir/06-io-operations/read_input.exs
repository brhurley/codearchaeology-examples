# IO.gets prints the prompt and returns the line (with a trailing newline)
name =
  IO.gets("Enter your name: ")
  |> String.trim()

IO.puts("Hello, #{name}!")

# Input is always text — convert it to work with numbers
age =
  IO.gets("Enter your age: ")
  |> String.trim()
  |> String.to_integer()

IO.puts("Next year you will be #{age + 1}")
