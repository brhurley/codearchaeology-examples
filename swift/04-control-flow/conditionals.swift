let temperature = 18

// if / else if / else
if temperature <= 0 {
    print("Freezing")
} else if temperature < 15 {
    print("Cold")
} else if temperature < 25 {
    print("Mild")
} else {
    print("Hot")
}

// The ternary conditional operator: condition ? valueIfTrue : valueIfFalse
let score = 72
let result = score >= 60 ? "Pass" : "Fail"
print("Result: \(result)")

// Conditions must be Bool — Swift has no "truthy" integers
let isReady = true
if isReady {
    print("Ready to go")
}
