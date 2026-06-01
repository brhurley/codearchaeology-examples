# Iterate over a range with Enum instead of a counter loop
Enum.each(1..3, fn i -> IO.puts("Line #{i}") end)

# A comprehension that filters: keep only even numbers
evens = for n <- 1..10, rem(n, 2) == 0, do: n
IO.puts("Evens: #{inspect(evens)}")

# `with` chains matches; the body runs only if every match succeeds
result =
  with {:ok, age} <- {:ok, 21},
       true <- age >= 18 do
    "Access granted"
  else
    _ -> "Access denied"
  end

IO.puts(result)
