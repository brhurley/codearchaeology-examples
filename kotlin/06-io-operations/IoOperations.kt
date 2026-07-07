import java.io.File

fun main() {
    // print() has no newline; println() adds one
    print("No newline here. ")
    println("This ends the line.")

    // Values concatenate directly into strings
    println("Numbers: " + 42 + ", " + 3.14)

    // Formatted output with printf-style specifiers
    val pi = 3.14159265
    println("Pi to 2 decimals: %.2f".format(pi))
    println("Padded: %5d|".format(42))       // right-aligned in 5 columns
    println("Name: %-10s|".format("Kotlin"))  // left-aligned in 10 columns

    // Write text to a file (creates or overwrites)
    val file = File("greetings.txt")
    file.writeText("Hello from Kotlin\n")
    file.appendText("Second line\n")

    // Read the whole file back as a single string
    val content = file.readText()
    print(content)

    // Read the file as a list of lines and number them
    println("--- lines ---")
    file.readLines().forEachIndexed { index, line ->
        println("${index + 1}: $line")
    }
}
