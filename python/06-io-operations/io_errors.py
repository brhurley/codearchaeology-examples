# Handling I/O errors gracefully

# Reading a file that may not exist
try:
    with open("missing.txt", "r") as f:
        data = f.read()
    print(data)
except FileNotFoundError:
    print("Error: the file 'missing.txt' was not found")

# Converting values that may not be valid numbers
raw_values = ["42", "hello", "17"]
for value in raw_values:
    try:
        number = int(value)
        print(f"Parsed {value!r} -> {number}")
    except ValueError:
        print(f"Could not parse {value!r} as an integer")

# OSError is the base class for most file-system failures
try:
    with open("output.txt", "w") as f:
        f.write("Saved successfully\n")
    print("Write complete")
except OSError as e:
    print(f"Write failed: {e}")
