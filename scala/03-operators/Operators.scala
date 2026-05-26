object Operators {
  def main(args: Array[String]): Unit = {
    // Precedence: * binds tighter than +
    println(s"2 + 3 * 4   = ${2 + 3 * 4}")
    println(s"(2 + 3) * 4 = ${(2 + 3) * 4}")

    // Bitwise operators on integers
    println(s"6 & 3  = ${6 & 3}")    // bitwise AND
    println(s"6 | 3  = ${6 | 3}")    // bitwise OR
    println(s"6 ^ 3  = ${6 ^ 3}")    // bitwise XOR
    println(s"1 << 4 = ${1 << 4}")   // left shift

    // Any single-argument method can be used as an infix operator
    val list = List(2, 3) ++ List(4, 5)
    println(s"list = $list")

    // Define your own operator by writing a method named +
    case class Vec(x: Int, y: Int) {
      def +(other: Vec): Vec = Vec(x + other.x, y + other.y)
    }
    val sum = Vec(1, 2) + Vec(3, 4)
    println(s"sum = $sum")
  }
}
