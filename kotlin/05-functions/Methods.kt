// Member functions (methods) and extension functions

class Rectangle(val width: Int, val height: Int) {
    // A method — belongs to the class and can use its properties
    fun area(): Int = width * height

    // Methods can call other methods of the same class
    fun describe(): String = "Rectangle ${width}x$height with area ${area()}"
}

// An extension function adds a method to the String type
fun String.shout(): String = this.uppercase() + "!"

// An extension function on Int
fun Int.isEven(): Boolean = this % 2 == 0

fun main() {
    val rect = Rectangle(4, 5)
    println(rect.area())        // call a method with dot notation
    println(rect.describe())

    // Extension functions are called exactly like built-in methods
    println("hello".shout())
    println("10 is even: ${10.isEven()}")
    println("7 is even: ${7.isEven()}")
}
