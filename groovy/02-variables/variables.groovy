// Dynamic typing with def
def name = "Groovy"
def year = 2003
def pi = 3.14159
def active = true

println "Language: ${name}"
println "First appeared: ${year}"
println "Pi: ${pi}"
println "Active: ${active}"

// Check the actual types at runtime
println ""
println "--- Runtime Types ---"
println "name is ${name.class.simpleName}"
println "year is ${year.class.simpleName}"
println "pi is ${pi.class.simpleName}"
println "active is ${active.class.simpleName}"

// Explicit type declarations (Java-style)
println ""
println "--- Explicit Types ---"
String greeting = "Hello from Groovy"
int count = 42
double ratio = 0.75
boolean found = false

println "greeting: ${greeting} (${greeting.class.simpleName})"
println "count: ${count} (${count.class.simpleName})"
println "ratio: ${ratio} (${ratio.class.simpleName})"
println "found: ${found} (${found.class.simpleName})"

// Dynamic reassignment - def variables can change type
println ""
println "--- Dynamic Reassignment ---"
def value = 100
println "value = ${value} (${value.class.simpleName})"
value = "now a string"
println "value = ${value} (${value.class.simpleName})"
value = [1, 2, 3]
println "value = ${value} (${value.class.simpleName})"
