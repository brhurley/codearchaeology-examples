# Integers - arbitrary precision (no overflow)
age = 30
big_number = 1_000_000_000_000
hex_value = 0xFF
binary_value = 0b1010
IO.puts("age: #{age}")
IO.puts("big_number: #{big_number}")
IO.puts("hex_value: #{hex_value}")
IO.puts("binary_value: #{binary_value}")

# Floats - 64-bit double precision
pi = 3.14159
temperature = -40.0
scientific = 1.0e-3
IO.puts("pi: #{pi}")
IO.puts("temperature: #{temperature}")
IO.puts("scientific: #{scientific}")

# Booleans
is_active = true
is_deleted = false
IO.puts("is_active: #{is_active}")
IO.puts("is_deleted: #{is_deleted}")

# Atoms - named constants (their name is their value)
status = :ok
color = :red
IO.puts("status: #{status}")
IO.puts("color: #{color}")

# Strings - UTF-8 encoded binaries
greeting = "Hello, Elixir!"
multiline = "line one\nline two"
IO.puts("greeting: #{greeting}")
IO.puts("multiline: #{multiline}")

# Charlists - list of character code points (Erlang compatibility)
charlist = ~c"hello"
IO.puts("charlist: #{charlist}")

# Nil - absence of a value
nothing = nil
IO.puts("nothing: #{inspect(nothing)}")

# Checking types
IO.puts("\n--- Type Checks ---")
IO.puts("is_integer(age): #{is_integer(age)}")
IO.puts("is_float(pi): #{is_float(pi)}")
IO.puts("is_boolean(is_active): #{is_boolean(is_active)}")
IO.puts("is_atom(status): #{is_atom(status)}")
IO.puts("is_binary(greeting): #{is_binary(greeting)}")
IO.puts("is_nil(nothing): #{is_nil(nothing)}")
