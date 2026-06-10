object Loops {
  def main(args: Array[String]): Unit = {
    // 'to' is inclusive: 1, 2, 3, 4, 5
    print("Counting: ")
    for (i <- 1 to 5) {
      print(s"$i ")
    }
    println()

    // 'until' is exclusive; 'by' sets the step
    print("Even numbers: ")
    for (i <- 0 until 10 by 2) {
      print(s"$i ")
    }
    println()

    // A while loop — needs a mutable var
    var countdown = 3
    while (countdown > 0) {
      println(s"T-minus $countdown")
      countdown -= 1
    }
    println("Liftoff!")

    // for-comprehension: 'yield' builds a new collection
    val squares = for (n <- 1 to 5) yield n * n
    println(s"Squares: $squares")

    // Nested generators with a guard act like a filtered loop
    print("Pairs summing to 5: ")
    for {
      a <- 1 to 4
      b <- 1 to 4
      if a + b == 5
    } print(s"($a,$b) ")
    println()
  }
}
