fun main() {
    // Range operator
    val oneToFive = 1..5
    println("3 in 1..5 = ${3 in oneToFive}")
    println("7 in 1..5 = ${7 in oneToFive}")

    // until creates a half-open range (excludes upper bound)
    val halfOpen = 1 until 5
    println("5 in 1 until 5 = ${5 in halfOpen}")

    // downTo and step
    print("Countdown:")
    for (i in 5 downTo 1 step 2) {
        print(" $i")
    }
    println()

    // Structural vs referential equality
    val s1 = "Kotlin"
    val s2 = "Kot" + "lin"
    val s3 = s1
    println("s1 == s2 (structural) = ${s1 == s2}")
    println("s1 === s3 (referential) = ${s1 === s3}")

    // Safe-call operator
    val name: String? = null
    val length = name?.length
    println("length via safe call = $length")

    // Elvis operator provides a default
    val safeLength = name?.length ?: 0
    println("length with default = $safeLength")

    // Not-null assertion (use sparingly)
    val nonNull: String? = "present"
    println("forced length = ${nonNull!!.length}")

    // Membership operators
    val fruits = listOf("apple", "banana", "cherry")
    println("'apple' in fruits = ${"apple" in fruits}")
    println("'grape' !in fruits = ${"grape" !in fruits}")

    // Type-check and cast operators
    val anything: Any = "Kotlin"
    if (anything is String) {
        // Smart cast: anything is now treated as String
        println("uppercase = ${anything.uppercase()}")
    }
}
