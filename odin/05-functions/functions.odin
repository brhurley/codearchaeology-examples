package main

import "core:fmt"

// Two parameters, one return value
add :: proc(a: int, b: int) -> int {
    return a + b
}

// Parameters of the same type can share a type annotation
multiply :: proc(a, b: int) -> int {
    return a * b
}

// No return type: this procedure only performs an action
greet :: proc(name: string) {
    fmt.printf("Hello, %s!\n", name)
}

main :: proc() {
    sum := add(3, 4)
    product := multiply(5, 6)

    fmt.println("Sum:", sum)
    fmt.println("Product:", product)

    greet("Odin")
}
