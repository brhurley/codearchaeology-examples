// Arithmetic operators
int a = 17
int b = 5

println "a + b       = ${a + b}"
println "a - b       = ${a - b}"
println "a * b       = ${a * b}"
println "a / b       = ${a / b}"           // BigDecimal division, not truncated
println "a.intdiv(b) = ${a.intdiv(b)}"     // Integer division
println "a % b       = ${a % b}"
println "a ** b      = ${a ** b}"          // Power operator

// Comparison operators (== calls .equals(), not reference compare)
println "a == b: ${a == b}"
println "a != b: ${a != b}"
println "a > b:  ${a > b}"
println "'cat' == 'cat': ${'cat' == 'cat'}"

// Logical operators with short-circuit evaluation
boolean t = true
boolean f = false
println "t && f: ${t && f}"
println "t || f: ${t || f}"
println "!t:     ${!t}"

// Compound assignment
int x = 10
x += 5
println "x += 5  -> $x"
x *= 2
println "x *= 2  -> $x"
x -= 6
println "x -= 6  -> $x"

// String operators: + concatenates, * repeats
String s = "Hi"
println s + " there!"
println s * 3
