// Looping constructs in Groovy

// for-in over a descending range
print "Countdown: "
for (i in 5..1) {
    print "${i} "
}
println()

// for-in over a list
def languages = ["Groovy", "Java", "Kotlin"]
for (lang in languages) {
    println "JVM language: ${lang}"
}

// while loop computing a factorial
def n = 1
def factorial = 1
while (n <= 5) {
    factorial *= n
    n++
}
println "5! = ${factorial}"

// Classic C-style for loop
print "Powers of 2: "
for (int i = 1; i <= 16; i *= 2) {
    print "${i} "
}
println()
