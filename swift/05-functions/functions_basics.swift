// A function with no parameters and no return value
func sayHello() {
    print("Hello from a function!")
}

// A function with parameters and a return value
func add(a: Int, b: Int) -> Int {
    return a + b
}

// A function returning a String built with interpolation
func greet(name: String) -> String {
    return "Welcome, \(name)!"
}

sayHello()

let sum = add(a: 3, b: 4)
print("3 + 4 = \(sum)")

print(greet(name: "Swift"))
