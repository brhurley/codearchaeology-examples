fun main() {
    print("What is your name? ")
    val name = readLine()

    if (name.isNullOrBlank()) {
        println("No name provided.")
    } else {
        println("Hello, $name!")
    }
}
