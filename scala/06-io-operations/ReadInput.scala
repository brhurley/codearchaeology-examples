import scala.io.StdIn

object ReadInput {
  def main(args: Array[String]): Unit = {
    println("What is your name?")
    val name = StdIn.readLine()

    println(s"Hello, $name! Enter two numbers, one per line.")
    val a = StdIn.readLine().trim.toInt
    val b = StdIn.readLine().trim.toInt
    println(s"Their sum is ${a + b}")
  }
}
