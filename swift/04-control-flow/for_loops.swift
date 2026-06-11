// Closed range: 1 through 5 inclusive
for i in 1...5 {
    print("Count: \(i)")
}

// Half-open range: 0 up to (but not including) 3
print("---")
for i in 0..<3 {
    print("Index: \(i)")
}

// Iterating an array
let languages = ["Swift", "Rust", "Go"]
print("---")
for language in languages {
    print("Language: \(language)")
}

// enumerated() gives both index and value
print("---")
for (index, language) in languages.enumerated() {
    print("\(index): \(language)")
}

// stride(from:to:by:) for custom steps
print("---")
for even in stride(from: 0, to: 10, by: 2) {
    print("Even: \(even)")
}

// Use _ when you only need to repeat, not the value
print("---")
var total = 0
for _ in 1...3 {
    total += 10
}
print("Total: \(total)")
