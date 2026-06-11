func describeAge(_ input: String) {
    // guard requires the else branch to exit scope (return/break/continue/throw)
    guard let age = Int(input) else {
        print("'\(input)' is not a valid number")
        return
    }

    guard age >= 0 else {
        print("Age cannot be negative")
        return
    }

    // `age` is available here because guard let binds into the outer scope
    if age >= 18 {
        print("\(age): adult")
    } else {
        print("\(age): minor")
    }
}

describeAge("25")
describeAge("15")
describeAge("-4")
describeAge("hello")
