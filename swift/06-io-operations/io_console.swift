import Foundation

// Basic output — print adds a newline by default
print("Standard output with a newline")

// Custom terminator suppresses the newline
print("No newline here", terminator: "")
print(" -- continued on the same line")

// Multiple values with a custom separator
print("Swift", "is", "expressive", separator: " | ")
print(1, 2, 3, separator: ", ")

// String interpolation handles any type
let language = "Swift"
let version = 6.0
print("\(language) version \(version)")

// printf-style formatting via Foundation
let pi = 3.14159265
print(String(format: "Pi to two decimals: %.2f", pi))
print(String(format: "Padded integer: %5d", 42))
