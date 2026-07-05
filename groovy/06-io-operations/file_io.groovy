// --- Writing ---
def file = new File('greetings.txt')

file.text = "Hello from Groovy!\n"      // replaces the whole file
file << "This line was appended.\n"     // appends to it

// withWriter opens a writer, runs the closure, then closes the stream for you
def languages = ['Groovy', 'Java', 'Kotlin']
new File('languages.txt').withWriter { writer ->
    languages.each { lang ->
        writer.writeLine(lang)
    }
}

// --- Reading ---
// Read an entire file as a single String
println "--- greetings.txt ---"
println file.text

// Read a file line by line; eachLine supplies a 1-based line number
println "--- languages.txt ---"
new File('languages.txt').eachLine { line, number ->
    println "${number}: ${line}"
}

// Read all lines at once into a List
def lines = new File('languages.txt').readLines()
println "Total languages: ${lines.size()}"
