object FormattedOutput {
  def main(args: Array[String]): Unit = {
    // print omits the newline; println adds one
    print("Loading")
    print("...")
    println("done")

    // The s-interpolator embeds expressions directly in strings
    val language = "Scala"
    val year = 2004
    println(s"$language first appeared in $year")

    // The f-interpolator is a type-checked printf: bad formats fail at compile time
    val pi = 3.14159265
    println(f"pi to 2 places: $pi%.2f")
    println(f"padded: ${42}%8d")

    // printf works too, inherited straight from the Java platform
    printf("hex: %x, octal: %o%n", 255, 8)

    // Console.err keeps diagnostics out of piped stdout
    Console.err.println("this goes to standard error")
  }
}
