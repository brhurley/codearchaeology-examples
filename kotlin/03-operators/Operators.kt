fun main() {
    // Arithmetic operators
    val a = 17
    val b = 5
    println("a + b = ${a + b}")
    println("a - b = ${a - b}")
    println("a * b = ${a * b}")
    println("a / b = ${a / b}")    // Integer division
    println("a % b = ${a % b}")    // Remainder

    // Floating-point division
    val x = 17.0
    val y = 5.0
    println("x / y = ${x / y}")

    // Compound assignment
    var counter = 10
    counter += 5
    counter -= 2
    counter *= 2
    println("counter = $counter")

    // Increment and decrement
    var n = 1
    n++
    ++n
    println("n = $n")

    // Comparison operators
    println("a == b is ${a == b}")
    println("a != b is ${a != b}")
    println("a > b is ${a > b}")
    println("a <= b is ${a <= b}")

    // Logical operators (short-circuit)
    val isAdult = true
    val hasTicket = false
    println("isAdult && hasTicket = ${isAdult && hasTicket}")
    println("isAdult || hasTicket = ${isAdult || hasTicket}")
    println("!isAdult = ${!isAdult}")

    // String concatenation with +
    val greeting = "Hello, " + "Kotlin!"
    println(greeting)

    // Bitwise operations use infix functions, not symbols
    val flags = 0b1100 and 0b1010
    val mask = 0b1100 or 0b0011
    val shifted = 1 shl 3
    println("and = $flags, or = $mask, shl = $shifted")
}
