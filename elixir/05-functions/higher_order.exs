# Each Enum function takes another function as an argument
result =
  1..5
  |> Enum.map(fn x -> x * x end)
  |> Enum.filter(fn x -> rem(x, 2) == 1 end)
  |> Enum.sum()

IO.puts("Sum of odd squares from 1..5: #{result}")
