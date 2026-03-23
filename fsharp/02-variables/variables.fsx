// --- Let Bindings: Immutable by Default ---
let age = 30
let pi = 3.14159
let name = "F#"
let isFunctional = true
let initial = 'F'

printfn "--- Basic Types ---"
printfn "Integer:   %d" age
printfn "Float:     %f" pi
printfn "String:    %s" name
printfn "Boolean:   %b" isFunctional
printfn "Character: %c" initial

// --- Type Annotations ---
// The compiler infers types, but you can annotate explicitly
let year: int = 2005
let version: float = 9.0
let creator: string = "Don Syme"

printfn ""
printfn "--- Type Annotations ---"
printfn "%s created F# in %d (now version %.1f)" creator year version

// --- Type Inference in Action ---
// The compiler infers the return type from usage
let doubled = age * 2
let greeting = "Hello, " + name
let area = pi * 5.0 * 5.0

printfn ""
printfn "--- Type Inference ---"
printfn "Doubled age: %d" doubled
printfn "Greeting: %s" greeting
printfn "Circle area: %.2f" area

// --- Numeric Types ---
let byteVal: byte = 255uy
let shortVal: int16 = 32_000s
let longVal: int64 = 9_000_000_000L
let decimalVal: decimal = 19.99M
let float32Val: float32 = 2.5f

printfn ""
printfn "--- Numeric Types ---"
printfn "Byte:    %d" byteVal
printfn "Int16:   %d" shortVal
printfn "Int64:   %d" longVal
printfn "Decimal: %M" decimalVal
printfn "Float32: %f" float32Val

// --- Type Conversions ---
let intFromFloat = int 3.7
let floatFromInt = float 42
let stringFromInt = string 100
let intFromString = int "255"

printfn ""
printfn "--- Type Conversions ---"
printfn "int 3.7      = %d" intFromFloat
printfn "float 42     = %f" floatFromInt
printfn "string 100   = %s" stringFromInt
printfn "int \"255\"    = %d" intFromString
