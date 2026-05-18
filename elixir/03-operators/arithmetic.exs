a = 17
b = 5

IO.puts("a + b = #{a + b}")
IO.puts("a - b = #{a - b}")
IO.puts("a * b = #{a * b}")
IO.puts("a / b = #{a / b}")
IO.puts("div(a, b) = #{div(a, b)}")
IO.puts("rem(a, b) = #{rem(a, b)}")

# Unary minus
IO.puts("-a = #{-a}")

# Exponentiation via Erlang's :math.pow (always returns a float)
IO.puts("2 ** 10 = #{:math.pow(2, 10)}")
