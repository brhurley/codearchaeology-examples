package main

import "fmt"

// counter returns a closure that increments its own captured count.
func counter() func() int {
    count := 0
    return func() int {
        count++
        return count
    }
}

// apply is a higher-order function: it takes a function as an argument
// and applies it to every element of a slice.
func apply(nums []int, fn func(int) int) []int {
    result := make([]int, len(nums))
    for i, n := range nums {
        result[i] = fn(n)
    }
    return result
}

func main() {
    next := counter()
    fmt.Println(next()) // 1
    fmt.Println(next()) // 2
    fmt.Println(next()) // 3

    // An anonymous function passed as an argument.
    double := func(x int) int { return x * 2 }
    fmt.Println(apply([]int{1, 2, 3, 4}, double))
}
