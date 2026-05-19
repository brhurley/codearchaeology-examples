// Spaceship operator (<=>) — returns -1, 0, or 1
println "5 <=> 3: ${5 <=> 3}"
println "3 <=> 5: ${3 <=> 5}"
println "5 <=> 5: ${5 <=> 5}"

// Elvis operator (?:) — shorthand for "value or default"
def name = null
def displayName = name ?: "Anonymous"
println "Name: $displayName"

// Safe navigation (?.) — returns null instead of throwing NullPointerException
String text = null
println "Length: ${text?.length()}"

// Range operator (..) and 'in' membership operator
def range = 1..5
println "Range size: ${range.size()}"
println "3 in range: ${3 in range}"
println "9 in range: ${9 in range}"

// Regex find (=~) and exact match (==~)
def matcher = "Groovy 4.0" =~ /\d+/
println "First digits found: ${matcher[0]}"
println "'12345' ==~ /\\d+/: ${'12345' ==~ /\d+/}"
println "'abc12' ==~ /\\d+/: ${'abc12' ==~ /\d+/}"
