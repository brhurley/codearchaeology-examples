package main

import "core:fmt"

main :: proc() {
    temperature := 18

    // Basic if / else if / else -- no parentheses around the condition
    if temperature > 25 {
        fmt.println("It's warm")
    } else if temperature > 10 {
        fmt.println("It's mild")
    } else {
        fmt.println("It's cold")
    }

    // If with an initialization statement.
    // `score` is scoped to this if/else chain only.
    if score := temperature * 5; score >= 90 {
        fmt.println("High score:", score)
    } else {
        fmt.println("Score is:", score)
    }

    // Ternary expression for simple value selection
    label := temperature > 15 ? "above" : "below"
    fmt.println("Temperature is", label, "15")
}
