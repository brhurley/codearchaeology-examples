# Strict boolean operators require true/false
IO.puts("true and false  => #{true and false}")
IO.puts("true or false   => #{true or false}")
IO.puts("not true        => #{not true}")

# Relaxed (short-circuit) operators accept any value
# They return the actual value, not just true/false
IO.inspect(nil || "default", label: "nil || \"default\"")
IO.inspect("first" || "second", label: "\"first\" || \"second\"")
IO.inspect(nil && "never", label: "nil && \"never\"")
IO.inspect("hello" && "world", label: "\"hello\" && \"world\"")
IO.inspect(!nil, label: "!nil")
