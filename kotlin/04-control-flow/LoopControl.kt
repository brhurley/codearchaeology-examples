fun main() {
    // continue skips the rest of the current iteration
    print("Odd numbers: ")
    for (i in 1..10) {
        if (i % 2 == 0) continue
        print("$i ")
    }
    println()

    // break exits the loop early
    print("Until 5: ")
    for (i in 1..10) {
        if (i > 5) break
        print("$i ")
    }
    println()

    // a labeled break escapes the outer loop from inside a nested loop
    print("Pairs: ")
    outer@ for (i in 1..3) {
        for (j in 1..3) {
            if (i == j) continue
            if (i + j > 4) break@outer
            print("($i,$j) ")
        }
    }
    println()
}
