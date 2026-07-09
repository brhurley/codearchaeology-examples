package main

import "core:fmt"
import "core:os"
import "core:strings"

main :: proc() {
    fmt.print("Enter your name: ")

    buf: [256]byte
    n, err := os.read(os.stdin, buf[:])
    if err != nil {
        fmt.eprintln("Error: could not read input")
        os.exit(1)
    }

    // buf[:n] is the slice of bytes actually read;
    // trim_space removes the trailing newline
    input := strings.trim_space(string(buf[:n]))
    fmt.printfln("Hello, %s! Your name has %d characters.", input, len(input))
}
