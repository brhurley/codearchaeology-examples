def main():
    # Write text to a new file ("w" creates or overwrites it)
    with open("greetings.txt", "w") as f:
        f.write("Hello from Mojo!\n")
        f.write("Line two of the file.\n")
    print("File written successfully.")

    # Read the entire file back into a String
    with open("greetings.txt", "r") as f:
        var contents = f.read()

    print("File contents:")
    print(contents, end="")
