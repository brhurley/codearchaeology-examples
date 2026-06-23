package main

import "core:fmt"

// Classic recursive factorial
factorial :: proc(n: int) -> int {
    if n <= 1 {
        return 1
    }
    return n * factorial(n - 1)
}

// Recursive Fibonacci
fibonacci :: proc(n: int) -> int {
    if n < 2 {
        return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

main :: proc() {
    fmt.println("5! =", factorial(5))
    fmt.println("10! =", factorial(10))

    fmt.print("First 10 Fibonacci numbers:")
    for i in 0..<10 {
        fmt.printf(" %d", fibonacci(i))
    }
    fmt.println()
}
