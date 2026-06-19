// Classic factorial: n! = n * (n-1) * ... * 1
def factorial(n) {
    if (n <= 1) {
        return 1
    }
    return n * factorial(n - 1)
}

// Fibonacci using a ternary expression
def fib(n) {
    n < 2 ? n : fib(n - 1) + fib(n - 2)
}

println factorial(5)
println fib(10)

// Ranges combine nicely with recursion
(0..7).each { println "fib($it) = ${fib(it)}" }
