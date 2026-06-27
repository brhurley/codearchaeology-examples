object Scope {

  // Visible to every method in this object.
  val taxRate = 0.10

  def checkout(price: Double): Double = {
    // `tax` is a nested function — it exists only inside `checkout`
    // and can see both `price` and the enclosing `taxRate`.
    def tax(amount: Double): Double = amount * taxRate
    val withTax = price + tax(price)
    withTax
  }

  def main(args: Array[String]): Unit = {
    println(s"checkout(100.0) = ${checkout(100.0)}")

    // A function VALUE (stored in a val) versus a METHOD (declared with def).
    val square: Int => Int = x => x * x   // first-class function value
    def cube(x: Int): Int = x * x * x     // ordinary method

    println(s"square(4) = ${square(4)}")
    println(s"cube(4) = ${cube(4)}")

    // Because `square` is a value, it can be passed around like any other value.
    val operations = List(square, (x: Int) => x + 1)
    println(s"applied to 5: ${operations.map(op => op(5))}")
  }
}
