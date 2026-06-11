let statusCode = 404

// Matching against ranges
switch statusCode {
case 200:
    print("OK")
case 300..<400:
    print("Redirect")
case 400..<500:
    print("Client error")
case 500..<600:
    print("Server error")
default:
    print("Unknown status")
}

// Matching tuples with value binding and a where clause
let point = (x: 3, y: 0)
switch point {
case (0, 0):
    print("Origin")
case (let x, 0):
    print("On the x-axis at \(x)")
case (0, let y):
    print("On the y-axis at \(y)")
case let (x, y) where x == y:
    print("On the diagonal")
default:
    print("Somewhere at \(point)")
}

// Multiple values in one case
let letter: Character = "e"
switch letter {
case "a", "e", "i", "o", "u":
    print("\(letter) is a vowel")
default:
    print("\(letter) is a consonant")
}
