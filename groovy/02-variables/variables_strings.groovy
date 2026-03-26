// Single-quoted strings are plain java.lang.String
def plain = 'No interpolation here: ${this is literal}'
println plain
println "Type: ${plain.class.simpleName}"

// Double-quoted strings with expressions become GStrings
def lang = "Groovy"
def version = 4.0
def interpolated = "Welcome to ${lang} ${version}"
println interpolated
println "Type: ${interpolated.class.simpleName}"

// Multi-line strings with triple quotes
def multiLine = """
    Name: ${lang}
    Version: ${version}
    JVM Language: Yes
""".stripIndent().trim()
println multiLine

// Slashy strings for regex patterns
def pattern = ~/\d{3}-\d{4}/
println ""
println "Pattern type: ${pattern.class.simpleName}"
println "Matches '555-1234': ${'555-1234' ==~ pattern}"
println "Matches 'hello': ${'hello' ==~ pattern}"

// String methods Groovy adds to java.lang.String
println ""
println "--- Groovy String Methods ---"
def text = "hello groovy world"
println "Capitalize: ${text.capitalize()}"
println "Contains: ${text.contains('groovy')}"
println "Reverse: ${text.reverse()}"
println "Words: ${text.tokenize()}"
