# IO.puts adds a trailing newline
IO.puts("Line one")
IO.puts("Line two")

# IO.write does NOT add a newline — you control it
IO.write("No newline here... ")
IO.write("still same line\n")

# String interpolation builds formatted messages
name = "Elixir"
version = 1.17
IO.puts("Running #{name} #{version}")

# IO.inspect prints the internal representation of ANY data structure
# and returns its argument, so it drops cleanly into a pipeline
[1, 2, 3]
|> Enum.map(fn x -> x * 2 end)
|> IO.inspect(label: "doubled")

# :io.format is Erlang's printf-style formatter
# ~s = string, ~.2f = float with 2 decimals, ~n = newline
:io.format("~s scored ~.2f~n", ["Elixir", 9.5])
