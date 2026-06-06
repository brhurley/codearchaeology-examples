package main

import "core:fmt"

main :: proc() {
    // C-style for loop: init; condition; post
    fmt.println("Counting up:")
    for i := 0; i < 3; i += 1 {
        fmt.println(i)
    }

    // While-style: a for loop with only a condition
    fmt.println("Countdown:")
    n := 3
    for n > 0 {
        fmt.println(n)
        n -= 1
    }

    // Range-based loop over a half-open interval (0, 1, 2)
    fmt.println("Range 0..<3:")
    for i in 0..<3 {
        fmt.println(i)
    }

    // Inclusive range (1, 2, 3)
    fmt.println("Range 1..=3:")
    for i in 1..=3 {
        fmt.println(i)
    }
}
