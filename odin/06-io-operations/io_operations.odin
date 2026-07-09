package main

import "core:fmt"
import "core:os"
import "core:strings"

main :: proc() {
    // --- Formatted console output ---
    name := "Odin"
    year := 2016
    pi := 3.14159

    fmt.println("=== I/O Operations in Odin ===")
    fmt.printfln("Language: %s (since %d)", name, year)
    fmt.printfln("Pi to 2 decimals: %.2f", pi)

    // --- Writing to a file ---
    lines := []string{
        "Odin was created in 2016.",
        "It is a data-oriented systems language.",
        "Error handling uses multiple return values.",
    }
    content := strings.join(lines, "\n")
    defer delete(content)

    if !os.write_entire_file("notes.txt", transmute([]byte)content) {
        fmt.eprintln("Error: failed to write notes.txt")
        os.exit(1)
    }
    fmt.println("Wrote notes.txt successfully")

    // --- Reading the file back with error handling ---
    data, ok := os.read_entire_file("notes.txt")
    if !ok {
        fmt.eprintln("Error: failed to read notes.txt")
        os.exit(1)
    }
    defer delete(data)

    fmt.println("--- notes.txt contents ---")
    fmt.print(string(data))
    fmt.println()
}
