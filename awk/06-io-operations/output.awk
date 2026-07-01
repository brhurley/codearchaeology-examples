BEGIN {
    # print separates arguments with OFS (a space) and adds a newline
    print "Line one"
    print "Multiple", "fields", "joined"

    # printf gives precise control; you supply the newline
    printf "Name: %-10s Age: %3d\n", "Alice", 30
    printf "Pi is about %.2f\n", 3.14159
    printf "Hex: %x, Octal: %o\n", 255, 8
}
