// Recursion and variable scope

val appName = "Calculator"   // top-level (global) — visible everywhere in the file

// Classic recursive factorial: n! = n * (n-1)!
fun factorial(n: Int): Long {
    return if (n <= 1) 1 else n * factorial(n - 1)
}

// Recursive Fibonacci
fun fib(n: Int): Int {
    return if (n < 2) n else fib(n - 1) + fib(n - 2)
}

fun main() {
    val limit = 5            // local — only visible inside main()
    println("$appName starting")
    println("factorial($limit) = ${factorial(limit)}")
    println("fib($limit) = ${fib(limit)}")
}
