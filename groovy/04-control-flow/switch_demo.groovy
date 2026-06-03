// Groovy's powerful switch statement

// Matching against ranges
def classify(value) {
    switch (value) {
        case 0:
            return "zero"
        case 1..9:
            return "single digit"
        case 10..99:
            return "double digit"
        default:
            return "large number"
    }
}

println "7 is a ${classify(7)}"
println "15 is a ${classify(15)}"
println "150 is a ${classify(150)}"

// Matching against a regex pattern, a type, and more
def describe(input) {
    switch (input) {
        case ~/\d{3}-\d{4}/:           // regex: must match fully
            return "a phone number"
        case String:                   // type check
            return "a String of length ${input.length()}"
        case Integer:
            return "an Integer worth ${input}"
        default:
            return "something else"
    }
}

println "hello is ${describe('hello')}"
println "42 is ${describe(42)}"
println "555-1234 is ${describe('555-1234')}"
