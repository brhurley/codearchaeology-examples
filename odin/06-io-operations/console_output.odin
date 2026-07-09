package main

import "core:fmt"

main :: proc() {
    // println adds a trailing newline automatically
    fmt.println("Line one")
    fmt.println("Line two")

    // printf uses C-style verbs and needs an explicit \n
    fmt.printf("Decimal: %d\n", 42)
    fmt.printf("Float (3 dp): %.3f\n", 2.71828)
    fmt.printf("String: %s\n", "Odin")
    fmt.printf("Boolean: %t\n", true)

    // printfln is printf plus an automatic newline
    fmt.printfln("Hex: %x, Octal: %o, Binary: %b", 255, 8, 5)

    // %v prints any value using its default format
    point := [2]int{3, 7}
    fmt.printfln("Vector: %v", point)
}
