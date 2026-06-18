defmodule Calculator do
  # Multi-line function using a do...end block
  def add(a, b) do
    a + b
  end

  # Single-line function using the do: shorthand
  def square(n), do: n * n
end

IO.puts(Calculator.add(3, 4))
IO.puts(Calculator.square(5))
