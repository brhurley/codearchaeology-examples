def main():
    # A standard line of output
    print("Standard output line")

    # Several values on one line (default separator is a space)
    print("Values:", 42, 3.14, True)

    # A custom separator with the sep keyword
    print("2026", "07", "08", sep="-")

    # Suppress the trailing newline with the end keyword
    print("Loading", end="")
    print("...", end="")
    print(" done")

    # Build a row with a custom separator
    print("Name", "Score", sep=" | ")
    print("Ada", 95, sep=" | ")
