package main

import "fmt"

// factorial computes n! recursively.
func factorial(n int) int {
    if n <= 1 {
        return 1
    }
    return n * factorial(n-1)
}

// sum accepts a variable number of int arguments.
func sum(numbers ...int) int {
    total := 0
    for _, n := range numbers {
        total += n
    }
    return total
}

func main() {
    fmt.Println("5! =", factorial(5))
    fmt.Println("sum(1,2,3) =", sum(1, 2, 3))
    fmt.Println("sum(4,5,6,7) =", sum(4, 5, 6, 7))

    // A slice can be expanded into variadic arguments with ...
    nums := []int{10, 20, 30}
    fmt.Println("sum(nums...) =", sum(nums...))
}
