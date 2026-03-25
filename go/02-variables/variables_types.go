package main

import "fmt"

func main() {
    // Integer types
    var small int8 = 127        // -128 to 127
    var medium int32 = 2147483647
    var large int64 = 9223372036854775807
    var unsigned uint8 = 255    // 0 to 255

    fmt.Println("=== Integer Types ===")
    fmt.Println("int8:", small)
    fmt.Println("int32:", medium)
    fmt.Println("int64:", large)
    fmt.Println("uint8:", unsigned)

    // Floating point
    var single float32 = 3.14
    var double float64 = 3.141592653589793

    fmt.Println("\n=== Float Types ===")
    fmt.Println("float32:", single)
    fmt.Println("float64:", double)

    // Strings and runes
    greeting := "Hello, 世界"
    var letter rune = 'A'       // rune is an alias for int32 (Unicode code point)
    var b byte = 65             // byte is an alias for uint8

    fmt.Println("\n=== Strings and Runes ===")
    fmt.Println("greeting:", greeting)
    fmt.Printf("letter: %c (code point: %d)\n", letter, letter)
    fmt.Printf("byte: %c (value: %d)\n", b, b)
    fmt.Println("greeting length in bytes:", len(greeting))

    // Explicit type conversions (no implicit conversions in Go)
    intVal := 42
    floatVal := float64(intVal)
    backToInt := int(floatVal + 0.9) // Truncates, does not round

    fmt.Println("\n=== Type Conversions ===")
    fmt.Println("int to float64:", floatVal)
    fmt.Println("float64 to int (42.9):", backToInt)

    // String conversions
    num := 72
    char := string(rune(num))
    fmt.Println("int 72 as rune:", char)

    fmt.Printf("\n=== Type Inspection ===\n")
    fmt.Printf("intVal: %T, floatVal: %T, greeting: %T\n",
        intVal, floatVal, greeting)
}
