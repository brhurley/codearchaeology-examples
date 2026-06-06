package main

import "core:fmt"

main :: proc() {
    numbers := [5]int{10, 20, 30, 40, 50}

    // Iterate over a fixed array: value and index
    for value, index in numbers {
        fmt.printf("numbers[%d] = %d\n", index, value)
    }

    // continue skips the rest of the current iteration
    fmt.println("Odd numbers only:")
    for i in 1..=10 {
        if i % 2 == 0 {
            continue
        }
        fmt.println(i)
    }

    // break exits the loop early
    fmt.println("Stop at 5:")
    for i in 1..=100 {
        if i > 5 {
            break
        }
        fmt.println(i)
    }

    // Labeled break to exit nested loops at once
    fmt.println("Nested with label:")
    outer: for x in 0..<3 {
        for y in 0..<3 {
            if x + y == 3 {
                break outer
            }
            fmt.printf("(%d, %d)\n", x, y)
        }
    }
}
