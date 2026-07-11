# Writing to and reading from files

# "w" mode creates the file (or overwrites it) and opens it for writing
with open("notes.txt", "w") as f:
    f.write("First line\n")
    f.write("Second line\n")

# "a" mode appends to the end without touching existing content
with open("notes.txt", "a") as f:
    f.write("Third line\n")

# "r" mode reads; .read() returns the entire file as one string
with open("notes.txt", "r") as f:
    content = f.read()
print("Full contents:")
print(content)

# Iterating over a file object yields one line at a time (memory-friendly)
with open("notes.txt", "r") as f:
    for number, line in enumerate(f, start=1):
        print(f"{number}: {line.rstrip()}")
