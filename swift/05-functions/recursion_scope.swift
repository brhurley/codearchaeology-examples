// Recursion: factorial calls itself until it reaches the base case
func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1
    }
    return n * factorial(n - 1)
}

// Return multiple values using a named tuple
func minMax(in numbers: [Int]) -> (min: Int, max: Int) {
    var currentMin = numbers[0]
    var currentMax = numbers[0]
    for number in numbers {
        if number < currentMin { currentMin = number }
        if number > currentMax { currentMax = number }
    }
    return (currentMin, currentMax)
}

// Scope: globalCount lives at the top level; message is local
var globalCount = 0
func increment(by step: Int) {
    globalCount += step              // modifies the global
    let message = "Added \(step)"    // local, not visible outside
    print(message)
}

print("5! = \(factorial(5))")

let bounds = minMax(in: [8, 3, 11, 6, 1])
print("Min: \(bounds.min), Max: \(bounds.max)")

increment(by: 10)
increment(by: 5)
print("Global count: \(globalCount)")
