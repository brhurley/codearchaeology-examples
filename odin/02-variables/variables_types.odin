package main

import "core:fmt"

// Distinct types: same underlying representation, incompatible at compile time
Meters :: distinct f64
Seconds :: distinct f64

// Enumeration type
Direction :: enum {
    North,
    South,
    East,
    West,
}

main :: proc() {
    // Sized integer types
    small : i8 = 127
    medium : i32 = 2_147_483_647
    large : i64 = 9_223_372_036_854_775_807
    unsigned : u8 = 255

    fmt.println("=== Integer Types ===")
    fmt.println("i8:", small)
    fmt.println("i32:", medium)
    fmt.println("i64:", large)
    fmt.println("u8:", unsigned)

    // Float types
    single : f32 = 3.14
    double : f64 = 3.141592653589793

    fmt.println()
    fmt.println("=== Float Types ===")
    fmt.println("f32:", single)
    fmt.println("f64:", double)

    // Strings and runes
    greeting := "Hello, World"

    fmt.println()
    fmt.println("=== Strings and Runes ===")
    fmt.println("greeting:", greeting)
    fmt.println("length:", len(greeting))
    fmt.printf("first byte as char: %c\n", greeting[0])

    // Explicit type conversions — no implicit conversions in Odin
    int_val : i32 = 42
    float_val := f64(int_val)
    back_to_int := i32(float_val + 0.9)  // Truncates toward zero

    fmt.println()
    fmt.println("=== Type Conversions ===")
    fmt.println("i32 to f64:", float_val)
    fmt.println("f64 to i32 (42.9):", back_to_int)

    // Distinct types in action
    distance : Meters = 100.0
    time_val : Seconds = 9.58

    // distance / time_val would NOT compile — the types are incompatible
    // Must convert to the shared base type (f64) for arithmetic
    speed := f64(distance) / f64(time_val)

    fmt.println()
    fmt.println("=== Distinct Types ===")
    fmt.printf("distance: %v meters\n", f64(distance))
    fmt.printf("time: %v seconds\n", f64(time_val))
    fmt.printf("speed: %.2f m/s\n", speed)

    // Enumeration values
    dir := Direction.North

    fmt.println()
    fmt.println("=== Enums ===")
    fmt.println("direction:", dir)
    fmt.println("as integer:", int(dir))
}
