def path = 'does_not_exist.txt'

// Reading .text on a missing file throws FileNotFoundException
try {
    def content = new File(path).text
    println content
} catch (FileNotFoundException e) {
    println "Could not read '${path}': file not found"
}

// withReader guarantees the stream is closed even when the read fails
try {
    new File(path).withReader { reader ->
        println reader.readLine()
    }
} catch (FileNotFoundException e) {
    println "withReader failed: ${e.class.simpleName}"
}

println "Program continues after handling the error."
