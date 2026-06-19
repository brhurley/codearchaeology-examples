// A closure assigned to a variable
def triple = { x -> x * 3 }
println triple(7)

// A closure using the implicit 'it' parameter
def shout = { it.toUpperCase() }
println shout("groovy")

// Higher-order function: takes a closure as an argument
def applyTwice(value, Closure operation) {
    operation(operation(value))
}
println applyTwice(5) { it + 10 }

// Closures power Groovy's collection methods
def numbers = [1, 2, 3, 4, 5, 6]
println numbers.collect { it * it }
println numbers.findAll { it % 2 == 0 }
println numbers.inject(0) { acc, n -> acc + n }
