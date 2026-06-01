age = 20

if age >= 18 do
  IO.puts("You are an adult")
else
  IO.puts("You are a minor")
end

# `unless` is the inverse of `if`
unless age == 0 do
  IO.puts("Age is not zero")
end

# Because `if` returns a value, you can assign its result
status = if age >= 65, do: "senior", else: "working age"
IO.puts("Status: #{status}")
