import java.io.File
import java.io.FileNotFoundException

fun main() {
    val file = File("missing.txt")
    try {
        val text = file.readText()
        println(text)
    } catch (e: FileNotFoundException) {
        println("File not found: ${file.name}")
    }
}
