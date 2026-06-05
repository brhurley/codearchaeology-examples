fun main() {
    // for over an inclusive range
    print("Countup: ")
    for (i in 1..5) {
        print("$i ")
    }
    println()

    // downTo counts backwards, step changes the increment
    print("Countdown: ")
    for (i in 10 downTo 0 step 2) {
        print("$i ")
    }
    println()

    // until creates a half-open range (excludes the upper bound)
    print("Indices: ")
    for (i in 0 until 4) {
        print("$i ")
    }
    println()

    // iterating a collection with both index and value
    val fruits = listOf("apple", "banana", "cherry")
    for ((index, fruit) in fruits.withIndex()) {
        println("$index: $fruit")
    }

    // while loop runs while the condition is true
    var count = 3
    while (count > 0) {
        println("T-minus $count")
        count--
    }
    println("Liftoff!")

    // do/while runs the body at least once before checking
    var attempts = 0
    do {
        attempts++
        println("Attempt $attempts")
    } while (attempts < 2)
}
