# File.read returns {:ok, contents} or {:error, reason}
case File.read("config.txt") do
  {:ok, contents} -> IO.puts("Read #{byte_size(contents)} bytes")
  {:error, reason} -> IO.puts("Could not read config.txt: #{reason}")
end

# File.write returns :ok or {:error, reason}
case File.write("greeting.txt", "Hi from Elixir\n") do
  :ok -> IO.puts("Write succeeded")
  {:error, reason} -> IO.puts("Write failed: #{reason}")
end

# Now read back the file we just wrote
case File.read("greeting.txt") do
  {:ok, contents} -> IO.write(contents)
  {:error, reason} -> IO.puts("Error: #{reason}")
end

File.rm!("greeting.txt")
