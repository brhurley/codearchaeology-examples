defmodule Math do
  # Base case: factorial of 0 is 1
  def factorial(0), do: 1

  # Recursive case with a guard ensuring n is positive
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end
end

IO.puts(Math.factorial(5))
IO.puts(Math.factorial(10))
