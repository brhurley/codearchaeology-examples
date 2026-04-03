fun main() {
    // Non-nullable types (default)
    val name: String = "Kotlin"
    // val invalid: String = null  // Won't compile!

    // Nullable types use the ? suffix
    var nickname: String? = "K"
    println("=== Null Safety ===")
    println("Name: $name")
    println("Nickname: $nickname")

    nickname = null
    println("Nickname after null: $nickname")

    // Safe call operator (?.) — returns null if the receiver is null
    println("\n=== Safe Calls ===")
    println("Nickname length: ${nickname?.length}")        // prints: null
    println("Name length: ${name.length}")                 // prints: 6

    // Elvis operator (?:) — provides a default for null
    val displayName = nickname ?: "No nickname"
    println("Display: $displayName")

    // Safe calls with chaining
    val input: String? = "hello, world"
    val result = input?.uppercase()?.take(5)
    println("Chained safe call: $result")

    // Not-null assertion (!!) — throws if null, use sparingly
    val definitelyNotNull: String? = "I exist"
    println("Asserted length: ${definitelyNotNull!!.length}")

    // Smart casts with null checks
    println("\n=== Smart Casts ===")
    val maybeNull: String? = "Kotlin"
    if (maybeNull != null) {
        // Compiler knows maybeNull is non-null here
        println("Smart cast length: ${maybeNull.length}")
    }

    // let — execute block only when non-null
    nickname?.let {
        println("This won't print because nickname is null")
    }

    val restored: String? = "Back again"
    restored?.let {
        println("Let block: $it has ${it.length} chars")
    }
}
