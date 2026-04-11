package main

import "core:fmt"

main :: proc() {
    // Explicit typed declarations: name : type = value
    age : int = 30
    name : string = "Odin Developer"
    pi : f64 = 3.14159
    active : bool = true

    fmt.println("=== Explicit Declarations ===")
    fmt.println("age:", age)
    fmt.println("name:", name)
    fmt.println("pi:", pi)
    fmt.println("active:", active)

    // Short declarations with type inference: name := value
    city := "Stockholm"
    year := 2016
    ratio := 0.618

    fmt.println()
    fmt.println("=== Short Declarations ===")
    fmt.println("city:", city)
    fmt.println("year:", year)
    fmt.println("ratio:", ratio)

    // Zero values — every type has a well-defined default
    zero_int : int
    zero_float : f64
    zero_bool : bool

    fmt.println()
    fmt.println("=== Zero Values ===")
    fmt.println("int:", zero_int)
    fmt.println("f64:", zero_float)
    fmt.println("bool:", zero_bool)

    // Constants use :: and are evaluated at compile time
    PI :: 3.14159265358979
    APP_NAME :: "CodeArchaeology"
    MAX_RETRIES :: 5

    // Typed constant: name : type : value
    TIMEOUT : int : 30

    fmt.println()
    fmt.println("=== Constants ===")
    fmt.println("PI:", PI)
    fmt.println("App:", APP_NAME)
    fmt.println("Max retries:", MAX_RETRIES)
    fmt.println("Timeout:", TIMEOUT)
}
