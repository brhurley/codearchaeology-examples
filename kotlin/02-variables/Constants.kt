// Compile-time constants (must be top-level or in object/companion)
const val MAX_USERS = 1000
const val APP_NAME = "CodeArchaeology"
const val PI = 3.14159265358979

// Object for grouping constants (similar to Java's static final)
object Config {
    const val VERSION = "1.0"
    const val DEBUG = false
}

fun main() {
    println("=== Constants ===")
    println("Max users: $MAX_USERS")
    println("App name: $APP_NAME")
    println("Pi: $PI")
    println("Version: ${Config.VERSION}")
    println("Debug: ${Config.DEBUG}")

    // val is read-only but computed at runtime
    val currentTime = System.currentTimeMillis()
    println("\n=== Runtime val vs const val ===")
    println("Current time (runtime val): $currentTime")
    println("App name (const val): $APP_NAME")

    // Type checking with 'is' and smart casts
    println("\n=== Type Checking ===")
    val items: List<Any> = listOf(42, "hello", 3.14, true, 'K')

    for (item in items) {
        val description = when (item) {
            is Int -> "Int: $item (doubled: ${item * 2})"
            is String -> "String: \"$item\" (length: ${item.length})"
            is Double -> "Double: $item"
            is Boolean -> "Boolean: $item"
            is Char -> "Char: '$item'"
            else -> "Unknown: $item"
        }
        println(description)
    }
}
