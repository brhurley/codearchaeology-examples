# Simple binding looks like assignment
x = 42
IO.puts("x = #{x}")

# Rebinding: the name can be bound to a new value
x = 100
IO.puts("x rebound to #{x}")

# Pattern matching with tuples
{a, b, c} = {1, "hello", :world}
IO.puts("a: #{a}, b: #{b}, c: #{c}")

# Pattern matching with lists
[head | tail] = [1, 2, 3, 4, 5]
IO.puts("head: #{head}")
IO.puts("tail: #{inspect(tail)}")

# Underscore ignores values you don't need
{_, second, _} = {:first, "I want this", :third}
IO.puts("second: #{second}")

# Pin operator (^) matches against existing value instead of rebinding
y = 10
{^y, z} = {10, 20}
IO.puts("y stayed: #{y}, z: #{z}")

# This would raise a MatchError because y is pinned to 10:
# {^y, z} = {99, 20}  # ** (MatchError) no match of right hand side value

# Pattern matching in function heads
defmodule Classifier do
  def describe(0), do: "zero"
  def describe(n) when n > 0, do: "positive"
  def describe(n) when n < 0, do: "negative"
end

IO.puts("\n--- Pattern Matching in Functions ---")
IO.puts("describe(0): #{Classifier.describe(0)}")
IO.puts("describe(42): #{Classifier.describe(42)}")
IO.puts("describe(-7): #{Classifier.describe(-7)}")
