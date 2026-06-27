object Functions {

  // A simple method: typed parameters and an explicit return type.
  // The last expression in the body is automatically returned — no `return` keyword needed.
  def add(a: Int, b: Int): Int = a + b

  // A multi-line body uses braces; the final expression is the result.
  def greet(name: String): String = {
    val message = s"Hello, $name!"
    message
  }

  // Default parameter values: `exponent` defaults to 2 if not supplied.
  def power(base: Int, exponent: Int = 2): Int = {
    var result = 1
    for (_ <- 1 to exponent) result *= base
    result
  }

  // Recursion: a method may call itself. The return type is mandatory here.
  def factorial(n: Int): Int =
    if (n <= 1) 1
    else n * factorial(n - 1)

  // Higher-order function: `f` is itself a function of type Int => Int.
  def applyTwice(f: Int => Int, x: Int): Int = f(f(x))

  // Returning a function. The returned lambda "closes over" `factor` (a closure).
  def multiplier(factor: Int): Int => Int =
    (x: Int) => x * factor

  def main(args: Array[String]): Unit = {
    // Calling methods by name with positional arguments.
    println(s"add(3, 4) = ${add(3, 4)}")
    println(greet("Scala"))

    // Default parameter in action.
    println(s"power(5) = ${power(5)}")           // exponent defaults to 2
    println(s"power(2, 10) = ${power(2, 10)}")

    // Named arguments let you pass parameters in any order.
    println(s"power(exponent = 3, base = 2) = ${power(exponent = 3, base = 2)}")

    // Recursion.
    println(s"factorial(5) = ${factorial(5)}")

    // Higher-order functions: pass a function literal (lambda).
    // `_ + 3` is shorthand for `x => x + 3`.
    println(s"applyTwice(_ + 3, 10) = ${applyTwice(_ + 3, 10)}")

    // Closures: the returned function remembers the captured `factor`.
    val triple = multiplier(3)
    println(s"triple(7) = ${triple(7)}")

    // Functions are first-class values, so collections accept them directly.
    val numbers = List(1, 2, 3, 4, 5)
    val doubled = numbers.map(n => n * 2)
    val evens = numbers.filter(_ % 2 == 0)
    val total = numbers.reduce(_ + _)
    println(s"doubled = $doubled")
    println(s"evens = $evens")
    println(s"total = $total")
  }
}
