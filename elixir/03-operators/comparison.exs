IO.puts("1 == 1.0  => #{1 == 1.0}")
IO.puts("1 === 1.0 => #{1 === 1.0}")
IO.puts("1 != 2    => #{1 != 2}")
IO.puts("1 !== 1.0 => #{1 !== 1.0}")

IO.puts("3 < 5     => #{3 < 5}")
IO.puts("5 <= 5    => #{5 <= 5}")
IO.puts("\"abc\" < \"abd\" => #{"abc" < "abd"}")

# Elixir defines a total ordering across all types
IO.puts("1 < :atom    => #{1 < :atom}")
IO.puts(":atom < \"s\" => #{:atom < "s"}")
