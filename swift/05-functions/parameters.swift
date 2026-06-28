// External label "to" with internal name "person"; first label suppressed with _
func greet(_ greeting: String, to person: String) -> String {
    return "\(greeting), \(person)!"
}

// Default parameter values let callers omit arguments
func makeCoffee(size: String = "medium", shots: Int = 1) -> String {
    return "A \(size) coffee with \(shots) shot(s)"
}

// A variadic parameter accepts zero or more values as an array
func total(of numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

// An inout parameter modifies the caller's variable directly
func double(_ value: inout Int) {
    value *= 2
}

print(greet("Hello", to: "Ada"))
print(makeCoffee())
print(makeCoffee(size: "large", shots: 2))
print("Total: \(total(of: 1, 2, 3, 4, 5))")

var score = 21
double(&score)   // pass with & to mark it as in-out
print("Doubled score: \(score)")
