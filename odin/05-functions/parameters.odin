package main

import "core:fmt"

// `exponent` defaults to 2 when the caller omits it
power :: proc(base: int, exponent: int = 2) -> int {
    result := 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}

// Variadic parameter: `nums` is a slice of all trailing arguments
sum_all :: proc(nums: ..int) -> int {
    total := 0
    for n in nums {
        total += n
    }
    return total
}

main :: proc() {
    fmt.println("5 squared:", power(5))        // uses default exponent = 2
    fmt.println("2 to the 5th:", power(2, 5))  // overrides the default

    fmt.println("Sum:", sum_all(1, 2, 3, 4, 5))
}
