import java.io.{FileWriter, PrintWriter}
import scala.io.Source
import scala.util.{Failure, Success, Try, Using}

object FileIo {
  def main(args: Array[String]): Unit = {
    // Write a file; Using closes the writer even if the body throws
    Using.resource(new PrintWriter("journal.txt")) { out =>
      out.println("day 1: learned println")
      out.println("day 2: learned val and var")
    }

    // Append by wrapping a FileWriter opened in append mode
    Using.resource(new PrintWriter(new FileWriter("journal.txt", true))) { out =>
      out.println("day 3: learned Using")
    }

    // Read the whole file into one String
    val contents = Using.resource(Source.fromFile("journal.txt"))(_.mkString)
    println(s"--- journal.txt (${contents.length} characters) ---")

    // Read line by line - Source is an iterator, so collection methods just work
    Using.resource(Source.fromFile("journal.txt")) { source =>
      for ((line, i) <- source.getLines().zipWithIndex)
        println(s"${i + 1}: $line")
    }

    // A missing file becomes a Failure value instead of an unhandled exception
    Try(Using.resource(Source.fromFile("missing.txt"))(_.mkString)) match {
      case Success(_) => println("missing.txt exists after all")
      case Failure(e) => println(s"could not read missing.txt: ${e.getMessage}")
    }

    new java.io.File("journal.txt").delete()
  }
}
