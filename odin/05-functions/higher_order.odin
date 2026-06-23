package main

import "core:fmt"

// `op` is a parameter whose type is "procedure taking an int, returning an int"
apply :: proc(x: int, op: proc(int) -> int) -> int {
    return op(x)
}

double :: proc(x: int) -> int {
    return x * 2
}

square :: proc(x: int) -> int {
    return x * x
}

main :: proc() {
    fmt.println("double(5):", apply(5, double))
    fmt.println("square(5):", apply(5, square))

    // A procedure can also be stored in a variable and called later
    op := double
    fmt.println("via variable:", op(21))
}
