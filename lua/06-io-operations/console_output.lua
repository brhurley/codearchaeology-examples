-- print separates its arguments with tabs and adds a trailing newline
print("print separates with tabs:", "a", "b", 42)

-- io.write writes exactly what you pass: no separators, no newline
io.write("io.write ")
io.write("stays on ")
io.write("one line\n")

-- Numbers are coerced to text automatically by io.write
io.write("Sum: ", 2 + 3, "\n")

-- string.format gives printf-style control over each value
print(string.format("Name: %s, Age: %d", "Ada", 36))
print(string.format("Pi to 2 places: %.2f", 3.14159))
print(string.format("Hex: %x, Padded: |%5d|", 255, 42))
