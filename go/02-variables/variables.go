package main

import "fmt"

// Package-level variables must use var
var packageLevel = "I'm accessible throughout the package"

func main() {
    // Explicit type declaration
    var age int = 30
    var name string = "Go Developer"
    var pi float64 = 3.14159
    var active bool = true

    fmt.Println("=== Explicit Declarations ===")
    fmt.Println("age:", age)
    fmt.Println("name:", name)
    fmt.Println("pi:", pi)
    fmt.Println("active:", active)

    // Short declaration with type inference
    city := "Chicago"
    year := 2009
    ratio := 0.618
    verbose := false

    fmt.Println("\n=== Short Declarations ===")
    fmt.Println("city:", city)
    fmt.Println("year:", year)
    fmt.Println("ratio:", ratio)
    fmt.Println("verbose:", verbose)

    // Zero values - uninitialized variables get a default
    var zeroInt int
    var zeroFloat float64
    var zeroString string
    var zeroBool bool

    fmt.Println("\n=== Zero Values ===")
    fmt.Printf("int: %d, float64: %g, string: %q, bool: %t\n",
        zeroInt, zeroFloat, zeroString, zeroBool)

    // Multiple assignment
    var a, b, c int = 1, 2, 3
    x, y := "hello", 42

    fmt.Println("\n=== Multiple Assignment ===")
    fmt.Println("a, b, c:", a, b, c)
    fmt.Println("x, y:", x, y)

    fmt.Println("\n=== Package Level ===")
    fmt.Println(packageLevel)
}
