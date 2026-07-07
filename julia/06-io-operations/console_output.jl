using Printf

# println adds a trailing newline; print does not
println("println adds a newline")
print("print does not")
print(" — see?\n")

# String interpolation with $
lang = "Julia"
version = 1.11
println("Language: $lang, version $version")

# Formatted output with @printf
@printf("Pi to 4 places: %.4f\n", π)
@printf("Padded integer: |%5d|\n", 42)
@printf("Hex: %x, Octal: %o\n", 255, 8)

# @sprintf returns a formatted string instead of printing it
label = @sprintf("%08.3f", 3.14159)
println("Formatted string: $label")

# show() prints the code representation of a value
show([1, 2, 3])
println()

# Any IO stream can be the target — here, standard error
println(stderr, "This message goes to standard error")
