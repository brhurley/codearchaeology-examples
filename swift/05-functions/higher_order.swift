// A function that takes another function as a parameter
func applyTwice(_ value: Int, using transform: (Int) -> Int) -> Int {
    return transform(transform(value))
}

// A named function used as an argument
func square(_ x: Int) -> Int {
    return x * x
}

print("applyTwice square 3 = \(applyTwice(3, using: square))")

// A closure stored in a constant
let addOne = { (x: Int) -> Int in x + 1 }
print("addOne(10) = \(addOne(10))")

// Higher-order functions on collections with trailing-closure syntax
let numbers = [1, 2, 3, 4, 5, 6]
let doubled = numbers.map { $0 * 2 }
let evens = numbers.filter { $0 % 2 == 0 }
let sum = numbers.reduce(0, +)

print("Doubled: \(doubled)")
print("Evens: \(evens)")
print("Sum: \(sum)")

// A function that returns a function, capturing `amount`
func makeAdder(_ amount: Int) -> (Int) -> Int {
    return { value in value + amount }
}

let addFive = makeAdder(5)
print("addFive(20) = \(addFive(20))")
