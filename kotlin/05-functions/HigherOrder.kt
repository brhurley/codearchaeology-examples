// Higher-order functions, lambdas, and closures

// Takes a function (Int, Int) -> Int as its third parameter
fun calculate(a: Int, b: Int, operation: (Int, Int) -> Int): Int {
    return operation(a, b)
}

// Returns a function — the returned lambda "closes over" factor
fun makeMultiplier(factor: Int): (Int) -> Int {
    return { value -> value * factor }
}

fun main() {
    // Pass a lambda directly (trailing-lambda syntax)
    val sum = calculate(5, 3) { x, y -> x + y }
    println("Sum: $sum")

    val product = calculate(5, 3) { x, y -> x * y }
    println("Product: $product")

    // Store a function in a variable
    val square: (Int) -> Int = { n -> n * n }
    println("Square of 6: ${square(6)}")

    // A closure that remembers its captured factor
    val triple = makeMultiplier(3)
    println("Triple 7: ${triple(7)}")

    // Built-in higher-order functions on collections
    val numbers = listOf(1, 2, 3, 4, 5)
    val doubled = numbers.map { it * 2 }
    val evens = numbers.filter { it % 2 == 0 }
    println("Doubled: $doubled")
    println("Evens: $evens")
}
