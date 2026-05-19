package main

import "fmt"

func main() {
    // Multiplication binds tighter than addition
    fmt.Println(2 + 3*4)   // 14, not 20

    // && binds tighter than ||
    fmt.Println(true || false && false) // true (false && false evaluated first)

    // Bitwise & shares level 1 with * — surprising!
    // 1 + 2 & 3  parses as  1 + (2 & 3)  ->  1 + 2  ->  3
    fmt.Println(1 + 2&3)

    // Comparison yields bool, so chaining like a < b < c is a type error.
    // Use && instead:
    a, b, c := 1, 2, 3
    fmt.Println(a < b && b < c)
}
