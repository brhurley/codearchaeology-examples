// Functions in Kotlin

// A standard function: parameters with types, an explicit return type
fun add(a: Int, b: Int): Int {
    return a + b
}

// A single-expression function — the body is one expression
fun multiply(a: Int, b: Int): Int = a * b

// Default arguments let callers omit parameters
fun greet(name: String, greeting: String = "Hello"): String {
    return "$greeting, $name!"
}

// A function that returns no useful value has the return type Unit (optional)
fun logMessage(message: String) {
    println("LOG: $message")
}

// vararg accepts any number of arguments
fun sumAll(vararg numbers: Int): Int {
    var total = 0
    for (n in numbers) {
        total += n
    }
    return total
}

fun main() {
    println(add(3, 4))            // 7
    println(multiply(6, 7))       // 42

    // Default argument used
    println(greet("Kotlin"))      // Hello, Kotlin!
    // Default argument overridden
    println(greet("Kotlin", "Hi"))
    // Named arguments — order no longer matters
    println(greet(greeting = "Welcome", name = "Ada"))

    logMessage("Functions are first-class")

    println(sumAll(1, 2, 3, 4, 5)) // 15
}
