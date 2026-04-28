@main def typeConversions(): Unit =
  // Explicit conversions between numeric types
  val intValue = 42
  val asDouble = intValue.toDouble
  val asLong   = intValue.toLong
  val asString = intValue.toString

  println(s"Int:    $intValue")
  println(s"Double: $asDouble")
  println(s"Long:   $asLong")
  println(s"String: \"$asString\"")

  // Parsing strings into numbers
  val parsed      = "100".toInt
  val parsedFloat = "2.718".toDouble
  println(s"Parsed Int:    $parsed")
  println(s"Parsed Double: $parsedFloat")

  // s"..." — evaluates expressions inline
  val name    = "Scala"
  val version = 3
  println(s"$name version $version")
  println(s"${name.toUpperCase} was released in ${2004 + (version - 1) * 6} (approx)")

  // f"..." — printf-style formatting
  val pi = 3.14159
  println(f"Pi to 2 places: $pi%.2f")
  println(f"Padded integer: $version%5d")

  // raw"..." — no escape processing
  println(raw"Newline literal: \n stays as-is")
