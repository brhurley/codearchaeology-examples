fun main() {
    // if/else as a statement
    val temperature = 18
    if (temperature > 25) {
        println("It's warm outside")
    } else if (temperature > 15) {
        println("It's mild outside")
    } else {
        println("It's cold outside")
    }

    // if/else as an expression - Kotlin has no ternary operator because
    // if already returns a value
    val score = 82
    val grade = if (score >= 90) "A" else if (score >= 80) "B" else "C"
    println("Grade: $grade")

    // The expression form can use blocks; the last line is the value
    val a = 7
    val b = 12
    val max = if (a > b) {
        println("a is larger")
        a
    } else {
        println("b is larger")
        b
    }
    println("Max: $max")
}
