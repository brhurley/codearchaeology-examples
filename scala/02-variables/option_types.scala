@main def optionTypes(): Unit =
  val found: Option[String]    = Some("Scala")
  val missing: Option[String]  = None

  // Pattern matching is the idiomatic way to unpack an Option
  found match
    case Some(v) => println(s"Found: $v")
    case None    => println("Not found")

  missing match
    case Some(v) => println(s"Found: $v")
    case None    => println("Value is absent")

  // getOrElse provides a fallback for the None case
  println(s"Present with default: ${found.getOrElse("default")}")
  println(s"Absent with default:  ${missing.getOrElse("default")}")

  // map transforms the value only when it is present
  val upper = found.map(_.toUpperCase)
  val skip  = missing.map(_.toUpperCase)
  println(s"Mapped present: $upper")
  println(s"Mapped absent:  $skip")

  // Option integrates with type inference
  val inferred = Some(2004)       // Option[Int]
  println(s"Inferred type holds: $inferred")
