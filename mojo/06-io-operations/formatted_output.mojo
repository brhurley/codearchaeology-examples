def main():
    var language: String = "Mojo"
    var year = 2026
    var released = True

    # Concatenate strings; convert numbers and booleans with String()
    print(language + " was compiled in the year " + String(year))
    print("Released: " + String(released))

    # Print columns with a custom separator
    print("CPU", "GPU", "TPU", sep=" | ")

    # A separator line and a footer
    print("--------------------")
    print("End of report")
