package main

import "fmt"

// Constants
const Pi = 3.14159265358979323846
const AppName = "CodeArchaeology"

// Grouped constants with iota
const (
    Sunday = iota // 0
    Monday        // 1
    Tuesday       // 2
    Wednesday     // 3
    Thursday      // 4
    Friday        // 5
    Saturday      // 6
)

// Iota with bit shifting for flags
const (
    ReadPermission   = 1 << iota // 1
    WritePermission              // 2
    ExecutePermission            // 4
)

func main() {
    fmt.Println("=== Constants ===")
    fmt.Println("Pi:", Pi)
    fmt.Println("App:", AppName)

    fmt.Println("\n=== Days (iota) ===")
    fmt.Println("Sunday:", Sunday)
    fmt.Println("Wednesday:", Wednesday)
    fmt.Println("Saturday:", Saturday)

    fmt.Println("\n=== Permissions (bit flags) ===")
    fmt.Println("Read:", ReadPermission)
    fmt.Println("Write:", WritePermission)
    fmt.Println("Execute:", ExecutePermission)

    // Combining flags
    readWrite := ReadPermission | WritePermission
    fmt.Println("Read + Write:", readWrite)

    // Untyped constants have flexible precision
    const huge = 1e100
    const tiny = huge / 1e99
    fmt.Println("\n=== Untyped Constants ===")
    fmt.Printf("tiny: %g\n", tiny)
}
