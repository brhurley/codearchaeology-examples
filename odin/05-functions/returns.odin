package main

import "core:fmt"

// Multiple (unnamed) return values
divmod :: proc(a, b: int) -> (int, int) {
    return a / b, a % b
}

// Named return values: assign to the names, then use a bare return
min_max :: proc(values: []int) -> (min, max: int) {
    min = values[0]
    max = values[0]
    for v in values[1:] {
        if v < min do min = v
        if v > max do max = v
    }
    return
}

main :: proc() {
    q, r := divmod(17, 5)
    fmt.printf("17 / 5 = %d remainder %d\n", q, r)

    lo, hi := min_max([]int{4, 9, 1, 7, 2})
    fmt.printf("min = %d, max = %d\n", lo, hi)
}
