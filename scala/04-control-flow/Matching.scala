object Matching {
  def main(args: Array[String]): Unit = {
    val day = 6

    // Match on a literal value; returns a result
    val name = day match {
      case 1 => "Monday"
      case 2 => "Tuesday"
      case 3 => "Wednesday"
      case 4 => "Thursday"
      case 5 => "Friday"
      case 6 => "Saturday"
      case 7 => "Sunday"
      case _ => "Unknown"   // _ is the catch-all (default) case
    }
    println(s"Day $day is $name")

    // Combine alternatives with | and add a guard with 'if'
    val kind = day match {
      case 6 | 7                 => "Weekend"
      case d if d >= 1 && d <= 5 => "Weekday"
      case _                     => "Invalid day"
    }
    println(s"Day $day is a $kind")

    // Match on the runtime TYPE of each element
    val items: List[Any] = List(42, "hello", 3.14, true)
    items.foreach { item =>
      val description = item match {
        case i: Int    => s"an Int: $i"
        case s: String => s"a String: $s"
        case d: Double => s"a Double: $d"
        case other     => s"something else: $other"
      }
      println(description)
    }
  }
}
