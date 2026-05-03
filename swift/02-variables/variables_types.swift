// Integer types — Int is the default (platform-sized, 64-bit on modern hardware)
let population: Int = 8_100_000_000
let byte: UInt8 = 255
let small: Int8 = -128

// Floating-point types
let pi: Double = 3.14159265358979  // 64-bit, default for floating point
let gravity: Float = 9.81          // 32-bit, when precision can be sacrificed

// Swift requires explicit conversion between numeric types
let widthInt: Int = 1920
let scale: Double = 1.5
let scaledWidth = Double(widthInt) * scale  // explicit Int → Double conversion
print("Scaled width: \(scaledWidth)")

// String is a full-featured value type, not a class
let greeting = "Hello"
let punctuation: Character = "!"
let combined = greeting + ", Swift" + String(punctuation)
print(combined)

// String interpolation works with any type that has a description
let items = 7
let price = 4.99
print("Total: \(Double(items) * price)")

// Bool
let debug = false
let verbose = true
print("Debug mode: \(debug), Verbose: \(verbose)")

// Type checking at runtime
let value: Any = 42
if value is Int {
    print("value is an Int")
}
