// String concatenation with +
var greeting = "Hello"
greeting += ", Swift!"
print(greeting)

// Compound assignment updates in place
var score = 100
score -= 25
score *= 2
print("Score: \(score)")

// Ternary conditional operator
let age = 20
let category = age >= 18 ? "Adult" : "Minor"
print("Category: \(category)")

// Nil-coalescing: use a default when the optional is nil
let nickname: String? = nil
let displayName = nickname ?? "Anonymous"
print("Name: \(displayName)")

// Range operators drive iteration
for i in 1...3 {
    print("Closed range: \(i)")
}
for i in 0..<3 {
    print("Half-open range: \(i)")
}
