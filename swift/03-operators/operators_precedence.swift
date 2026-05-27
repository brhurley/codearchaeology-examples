// Multiplication has higher precedence than addition
print("2 + 3 * 4 = \(2 + 3 * 4)")

// Parentheses change the grouping
print("(2 + 3) * 4 = \((2 + 3) * 4)")

// Overflow operator wraps instead of trapping
let maxByte: UInt8 = 255
print("255 &+ 1 = \(maxByte &+ 1)")

// Identity operators compare references, not values
class Robot {}
let r1 = Robot()
let r2 = r1
print("Same instance: \(r1 === r2)")
