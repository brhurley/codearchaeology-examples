// Conditional control flow in Groovy

// if / else if / else
def temperature = 30
if (temperature > 35) {
    println "It's scorching hot!"
} else if (temperature >= 25) {
    println "It's a warm day."
} else {
    println "It's cool out."
}

// Ternary operator: condition ? ifTrue : ifFalse
def score = 72
def result = score >= 60 ? "Pass" : "Fail"
println "Result: ${result}"

// Elvis operator (?:) returns the left side if "truthy", else the right
// An empty string is "falsy" under Groovy truth, so we get the default
def username = ""
def displayName = username ?: "Anonymous"
println "User: ${displayName}"

// Safe navigation (?.) returns null instead of throwing on a null object
def user = null
println "Name length: ${user?.length()}"
