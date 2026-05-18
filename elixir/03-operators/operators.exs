# String concatenation with <>
greeting = "Hello, " <> "World!"
IO.puts(greeting)

# List concatenation with ++ and subtraction with --
combined = [1, 2, 3] ++ [4, 5]
trimmed = [1, 2, 3, 4, 5] -- [2, 4]
IO.inspect(combined, label: "combined")
IO.inspect(trimmed, label: "trimmed")

# The match operator: = is pattern matching, not assignment
{x, y, z} = {10, 20, 30}
IO.puts("x=#{x}, y=#{y}, z=#{z}")

[head | tail] = [1, 2, 3, 4]
IO.puts("head=#{head}")
IO.inspect(tail, label: "tail")

# The pipe operator threads the value as the first argument
result =
  "  hello world  "
  |> String.trim()
  |> String.upcase()
  |> String.replace(" ", "-")

IO.puts("piped result: #{result}")

# Membership operator: in
IO.puts("3 in [1, 2, 3]  => #{3 in [1, 2, 3]}")
IO.puts("9 in 1..5       => #{9 in 1..5}")
