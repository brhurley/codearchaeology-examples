using Printf

# --- Writing a file (do-block auto-closes it) ---
open("notes.txt", "w") do file
    println(file, "Julia I/O Demo")
    println(file, "Line 2 of 3")
    println(file, "Line 3 of 3")
end
println("File written.")

# --- Reading the whole file at once ---
content = read("notes.txt", String)
println("\nFull contents:")
print(content)

# --- Reading line by line with enumerate for line numbers ---
println("\nNumbered lines:")
for (i, line) in enumerate(eachline("notes.txt"))
    @printf("%d: %s\n", i, line)
end

# --- Appending in "a" mode does not overwrite ---
open("notes.txt", "a") do file
    println(file, "Appended line")
end

lines = readlines("notes.txt")
println("\nTotal lines now: $(length(lines))")
