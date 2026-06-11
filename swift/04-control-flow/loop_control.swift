// continue: skip odd numbers
print("Even numbers:")
for i in 1...10 {
    if i % 2 != 0 {
        continue
    }
    print(i)
}

// break: stop at the first number over 4
print("Stopping early:")
for i in 1...10 {
    if i > 4 {
        break
    }
    print(i)
}

// Labeled loops: break out of the outer loop
print("Searching grid:")
outer: for row in 1...3 {
    for col in 1...3 {
        if row == 2 && col == 2 {
            print("Found target at (\(row), \(col))")
            break outer
        }
        print("Checking (\(row), \(col))")
    }
}
