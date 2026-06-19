package main

import "fmt"

// greet takes a name and returns a greeting string.
func greet(name string) string {
    return "Hello, " + name + "!"
}

// add takes two ints and returns their sum.
func add(a, b int) int {
    return a + b
}

// divmod returns multiple values: the quotient and the remainder.
func divmod(a, b int) (int, int) {
    return a / b, a % b
}

// stats uses named return values, initialized to their zero values.
func stats(numbers []int) (sum int, count int) {
    for _, n := range numbers {
        sum += n
        count++
    }
    return // a "naked" return sends back the named values
}

func main() {
    fmt.Println(greet("Gopher"))
    fmt.Println("3 + 4 =", add(3, 4))

    q, r := divmod(17, 5)
    fmt.Printf("17 / 5 = %d remainder %d\n", q, r)

    total, n := stats([]int{10, 20, 30})
    fmt.Printf("sum=%d count=%d\n", total, n)
}
