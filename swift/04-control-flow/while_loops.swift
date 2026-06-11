// while: condition checked before each iteration
var countdown = 3
while countdown > 0 {
    print("T-minus \(countdown)")
    countdown -= 1
}
print("Liftoff!")

print("---")

// repeat-while: body runs at least once, condition checked after
var attempts = 0
repeat {
    attempts += 1
    print("Attempt \(attempts)")
} while attempts < 3

print("Done after \(attempts) attempts")
