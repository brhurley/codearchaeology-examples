@main def variables(): Unit =
  // val: immutable — preferred in Scala
  val language = "Scala"
  val birthYear = 2004
  val versionNumber = 3.7
  val isStaticallyTyped = true

  println(s"Language: $language")
  println(s"Born: $birthYear")
  println(s"Version: $versionNumber")
  println(s"Statically typed: $isStaticallyTyped")

  // Explicit type annotations (optional when the compiler can infer)
  val count: Int = 42
  val pi: Double = 3.14159265
  val initial: Char = 'S'
  val message: String = "Hello, Scala!"

  println(s"Count: $count, Pi: $pi, Initial: $initial")
  println(s"Message: $message")

  // var: mutable — use only when mutation is necessary
  var counter = 0
  counter += 1
  counter += 1
  println(s"Counter: $counter")
