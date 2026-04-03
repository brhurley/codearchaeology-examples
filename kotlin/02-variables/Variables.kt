fun main() {
    // Immutable (read-only) variables with val
    val language: String = "Kotlin"        // Explicit type
    val version = 2.0                      // Inferred as Double
    val year = 2011                        // Inferred as Int
    val isModern = true                    // Inferred as Boolean

    println("=== val (read-only) variables ===")
    println("Language: $language")
    println("Version: $version")
    println("Year: $year")
    println("Is modern: $isModern")

    // Mutable variables with var
    var counter = 0
    println("\n=== var (mutable) variables ===")
    println("Counter before: $counter")
    counter = 10
    println("Counter after: $counter")

    // Basic types
    println("\n=== Basic Types ===")
    val byte: Byte = 127                   // 8-bit signed integer
    val short: Short = 32767               // 16-bit signed integer
    val int: Int = 2_147_483_647           // 32-bit signed integer (underscores for readability)
    val long: Long = 9_000_000_000L        // 64-bit signed integer
    val float: Float = 3.14F               // 32-bit floating point
    val double: Double = 3.141592653589793 // 64-bit floating point
    val char: Char = 'K'                   // Single character
    val bool: Boolean = true               // Boolean

    println("Byte: $byte")
    println("Short: $short")
    println("Int: $int")
    println("Long: $long")
    println("Float: $float")
    println("Double: $double")
    println("Char: $char")
    println("Boolean: $bool")

    // Strings
    println("\n=== Strings ===")
    val greeting = "Hello, Kotlin"
    val multiline = """
        |This is a
        |multiline string
        |with trimmed margins
    """.trimMargin()

    println("Greeting: $greeting")
    println("Length: ${greeting.length}")
    println("Multiline:\n$multiline")

    // Type conversions (explicit — no implicit widening in Kotlin)
    println("\n=== Type Conversions ===")
    val intVal = 42
    val longVal = intVal.toLong()
    val doubleVal = intVal.toDouble()
    val stringVal = intVal.toString()
    val backToInt = "123".toInt()

    println("Int: $intVal")
    println("To Long: $longVal")
    println("To Double: $doubleVal")
    println("To String: \"$stringVal\" (type: String)")
    println("String to Int: $backToInt")
}
