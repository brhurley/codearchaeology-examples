object Comparison {
  def main(args: Array[String]): Unit = {
    val a = 17
    val b = 5

    // Relational operators return Boolean
    println(s"a > b   : ${a > b}")
    println(s"a < b   : ${a < b}")
    println(s"a >= b  : ${a >= b}")
    println(s"a == b  : ${a == b}")
    println(s"a != b  : ${a != b}")

    // == compares values (structural equality), unlike Java's reference check
    val s1 = "scala"
    val s2 = "sca" + "la"
    println(s"s1 == s2: ${s1 == s2}")

    // Logical operators with short-circuit evaluation
    val sunny = true
    val warm = false
    println(s"sunny && warm: ${sunny && warm}")
    println(s"sunny || warm: ${sunny || warm}")
    println(s"!sunny       : ${!sunny}")
  }
}
