package main

import "core:fmt"

main :: proc() {
    day := 3

    // Switch on a value -- no automatic fallthrough, no `break` needed
    switch day {
    case 1:
        fmt.println("Monday")
    case 2, 3, 4:
        // A single case can match multiple values
        fmt.println("Midweek")
    case 5:
        fmt.println("Friday")
    case:
        // The default case has no value
        fmt.println("Weekend")
    }

    // Switch with ranges: ..= is inclusive, ..< is half-open
    grade := 84
    switch grade {
    case 90..=100:
        fmt.println("Grade: A")
    case 80..<90:
        fmt.println("Grade: B")
    case 70..<80:
        fmt.println("Grade: C")
    case:
        fmt.println("Grade: F")
    }

    // A bare `switch` (switch true) replaces long if/else chains
    n := -7
    switch {
    case n < 0:
        fmt.println("negative")
    case n == 0:
        fmt.println("zero")
    case:
        fmt.println("positive")
    }
}
