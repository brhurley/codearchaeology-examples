fun main() {
    // when as a switch/case replacement
    val day = 3
    val name = when (day) {
        1 -> "Monday"
        2 -> "Tuesday"
        3 -> "Wednesday"
        in 4..5 -> "Almost weekend"
        6, 7 -> "Weekend"
        else -> "Unknown"
    }
    println("Day $day is $name")

    // when without an argument acts like an if/else-if chain
    val n = 42
    val size = when {
        n < 0 -> "negative"
        n == 0 -> "zero"
        n < 100 -> "small"
        else -> "large"
    }
    println("$n is $size")

    // when can check types, with smart casts inside each branch
    val items = listOf(42, "hello", 3.14, true)
    for (item in items) {
        val description = when (item) {
            is Int -> "Int doubled is ${item * 2}"
            is String -> "String of length ${item.length}"
            is Double -> "Double rounded is ${item.toInt()}"
            else -> "Something else"
        }
        println(description)
    }
}
