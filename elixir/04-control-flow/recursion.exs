defmodule Counter do
  # Base case: stop when we reach zero
  def count_down(0), do: IO.puts("Liftoff!")

  # Recursive case: print, then count down from one less
  def count_down(n) do
    IO.puts(n)
    count_down(n - 1)
  end
end

Counter.count_down(3)
