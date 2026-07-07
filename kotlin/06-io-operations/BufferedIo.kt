import java.io.File

fun main() {
    // Buffered writing; 'use' closes the writer automatically
    File("numbers.txt").bufferedWriter().use { writer ->
        for (i in 1..5) {
            writer.write("Line $i")
            writer.newLine()
        }
    }

    // useLines streams the file lazily and closes it when done
    var total = 0
    File("numbers.txt").useLines { lines ->
        lines.forEach { _ -> total += 1 }
    }

    println("Read $total lines")
}
