defmodule Greeter do
  # \\ provides a default value for the greeting parameter
  def greet(name, greeting \\ "Hello") do
    "#{greeting}, #{name}!"
  end
end

IO.puts(Greeter.greet("World"))
IO.puts(Greeter.greet("Elixir", "Welcome"))
