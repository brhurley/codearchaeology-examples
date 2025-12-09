import Foundation

// A proper greeting function
func greet(name: String) -> String {
    return "Hello, \(name)!"
}

// Call the function
let message = greet(name: "World")
print(message)
