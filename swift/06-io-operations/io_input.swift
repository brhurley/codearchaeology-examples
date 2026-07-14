// readLine() returns String? — nil when input runs out
print("What is your name?")
if let name = readLine() {
    print("Hello, \(name)!")
} else {
    print("No input received.")
}

// Parsing numbers from a line of input
print("Enter two numbers separated by a space:")
if let line = readLine() {
    let numbers = line.split(separator: " ").compactMap { Int($0) }
    if numbers.count == 2 {
        print("Sum: \(numbers[0] + numbers[1])")
    } else {
        print("Please enter exactly two integers.")
    }
}
