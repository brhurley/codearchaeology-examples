# Anonymous function bound to a variable; called with a dot
double = fn x -> x * 2 end
IO.puts(double.(10))

# The capture operator & is shorthand: &1 is the first argument
triple = &(&1 * 3)
IO.puts(triple.(10))

# Capturing a named function (String.upcase/1) as a value
upcase = &String.upcase/1
IO.puts(upcase.("elixir"))
