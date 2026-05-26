object Arithmetic {
  def main(args: Array[String]): Unit = {
    val a = 17
    val b = 5

    println(s"a + b  = ${a + b}")          // addition
    println(s"a - b  = ${a - b}")          // subtraction
    println(s"a * b  = ${a * b}")          // multiplication
    println(s"a / b  = ${a / b}")          // integer division
    println(s"a % b  = ${a % b}")          // remainder (modulo)

    // Floating-point division keeps the fractional part
    val x = 17.0
    val y = 5.0
    println(s"x / y  = ${x / y}")

    // Every operator is really a method call: a + b is a.+(b)
    println(s"a.+(b) = ${a.+(b)}")

    // Scala has no ++ or -- operators; use compound assignment instead
    var counter = 0
    counter += 1
    counter += 1
    println(s"counter = $counter")
  }
}
