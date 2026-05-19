package main

import "fmt"

func main() {
    // Arithmetic
    a, b := 17, 5
    fmt.Println("Arithmetic:")
    fmt.Println("a + b =", a+b)
    fmt.Println("a - b =", a-b)
    fmt.Println("a * b =", a*b)
    fmt.Println("a / b =", a/b) // integer division: truncates
    fmt.Println("a % b =", a%b)

    // Floating-point division requires float operands
    x, y := 17.0, 5.0
    fmt.Println("x / y =", x/y)

    // Comparison — always yields bool
    fmt.Println("\nComparison:")
    fmt.Println("a == b:", a == b)
    fmt.Println("a != b:", a != b)
    fmt.Println("a > b:", a > b)
    fmt.Println("a <= b:", a <= b)

    // Logical — short-circuit, bool only
    t, f := true, false
    fmt.Println("\nLogical:")
    fmt.Println("t && f:", t && f)
    fmt.Println("t || f:", t || f)
    fmt.Println("!t:", !t)

    // Bitwise: p = 1100, q = 1010
    p, q := 12, 10
    fmt.Println("\nBitwise:")
    fmt.Println("p & q  =", p&q)   // AND  -> 8
    fmt.Println("p | q  =", p|q)   // OR   -> 14
    fmt.Println("p ^ q  =", p^q)   // XOR  -> 6
    fmt.Println("p &^ q =", p&^q)  // AND NOT -> 4
    fmt.Println("p << 2 =", p<<2)  // left shift
    fmt.Println("p >> 1 =", p>>1)  // right shift

    // Compound assignment
    n := 10
    n += 5
    fmt.Println("\nAssignment:")
    fmt.Println("n += 5 ->", n)
    n *= 2
    fmt.Println("n *= 2 ->", n)
    n %= 7
    fmt.Println("n %= 7 ->", n)

    // Increment is a statement, not an expression
    c := 0
    c++
    c++
    fmt.Println("c after c++ twice:", c)

    // String concatenation uses +
    greet := "Hello, " + "Go!"
    fmt.Println("\nString:")
    fmt.Println(greet)
}
