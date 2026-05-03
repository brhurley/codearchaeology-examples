// Optional types: a value may or may not exist
var username: String? = nil
var score: Int? = nil

print("Username before login: \(username ?? "not set")")

// Simulate a user logging in
username = "swiftcoder"
score = 1500

// Optional binding: safely unwrap with 'if let'
if let name = username {
    print("Welcome back, \(name)!")
}

// 'guard let' for early exit — preferred when nil means the function can't proceed
func greetUser(_ user: String?) {
    guard let name = user else {
        print("No user provided")
        return
    }
    print("Hello, \(name)")
}

greetUser(username)
greetUser(nil)

// Nil coalescing operator: provide a default when nil
let displayScore = score ?? 0
print("Score: \(displayScore)")

// Optional chaining: safely access properties/methods on optionals
let nameLength = username?.count
print("Username length: \(nameLength ?? 0)")

// Multiple optionals with 'if let' (Swift 5.9+ syntax)
if let name = username, let points = score {
    print("\(name) has \(points) points")
}

// Implicitly unwrapped optional: use only when you guarantee a value exists
// (common in iOS where outlets are set before use)
var title: String! = "Swift Tutorial"
print("Title: \(title!)")
