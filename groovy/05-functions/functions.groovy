// Method with an explicit return type and parameter type
int square(int n) {
    return n * n
}

// Dynamic return type using def; the last expression is returned
def greet(name) {
    "Hello, ${name}!"
}

// A method with no parameters
def currentYear() {
    2026
}

println square(5)
println greet("Groovy")
println currentYear()
