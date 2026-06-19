// Default parameter value: exponent defaults to 2 if not supplied
def power(base, exponent = 2) {
    base ** exponent
}

// Varargs: accept any number of integer arguments
def sum(int... numbers) {
    int total = 0
    for (n in numbers) {
        total += n
    }
    total
}

println power(3)         // uses the default exponent of 2
println power(2, 10)     // overrides the default
println sum(1, 2, 3, 4, 5)
println sum()            // no arguments at all
