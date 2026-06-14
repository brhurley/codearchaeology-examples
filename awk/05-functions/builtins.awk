# Built-in functions in AWK
BEGIN {
    text = "Code Archaeology"

    # String functions
    print "Length:", length(text)
    print "Uppercase:", toupper(text)
    print "Lowercase:", tolower(text)
    print "Substring:", substr(text, 1, 4)

    # split() breaks a string into an array, returning the count
    n = split(text, words, " ")
    print "Word count:", n
    print "First word:", words[1]

    # Math functions
    print "Square root of 144:", sqrt(144)
    print "Truncated 7.9:", int(7.9)

    # sprintf() returns a formatted string (like printf, but as a value)
    label = sprintf("[%05d]", 42)
    print "Formatted ID:", label
}
