object Conditionals {
  def main(args: Array[String]): Unit = {
    val temperature = 18

    // if/else used as a statement for side effects
    if (temperature > 25) {
      println("It's warm outside")
    } else if (temperature > 10) {
      println("It's mild outside")
    } else {
      println("It's cold outside")
    }

    // if/else used as an EXPRESSION — it returns a value
    val label = if (temperature > 20) "warm" else "cool"
    println(s"The weather is $label")

    // Scala has no ternary operator; if/else fills that role
    val adjusted = if (temperature > 20) temperature else 20
    println(s"Adjusted reading: $adjusted")
  }
}
