# Write a file — File.write! raises on error (the ! convention)
File.write!("poem.txt", "Roses are red\nViolets are blue\n")

# Append instead of overwriting
File.write!("poem.txt", "Elixir is fun\n", [:append])

# Read the whole file into a single string
contents = File.read!("poem.txt")
IO.puts("=== File contents ===")
IO.write(contents)

# Stream the file line by line — memory-efficient for huge files,
# since only one line is held at a time
IO.puts("=== Numbered lines ===")
"poem.txt"
|> File.stream!()
|> Enum.with_index(1)
|> Enum.each(fn {line, i} ->
  IO.write("#{i}: #{line}")
end)

# Clean up the file we created
File.rm!("poem.txt")
