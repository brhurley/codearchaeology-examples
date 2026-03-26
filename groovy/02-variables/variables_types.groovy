// The 'as' keyword for coercion
def numStr = "42"
def num = numStr as int
println "String '${numStr}' as int: ${num} (${num.class.simpleName})"

def pi = 3.14159
def rounded = pi as int
println "Double ${pi} as int: ${rounded} (${rounded.class.simpleName})"

// toInteger(), toDouble(), etc. - Groovy adds these to String
println ""
println "--- Conversion Methods ---"
println "'100'.toInteger(): ${'100'.toInteger()} (${('100'.toInteger()).class.simpleName})"
println "'3.14'.toDouble(): ${'3.14'.toDouble()} (${('3.14'.toDouble()).class.simpleName})"
println "'true'.toBoolean(): ${'true'.toBoolean()}"
println "42.toString(): ${42.toString()} (${42.toString().class.simpleName})"

// BigDecimal and BigInteger - Groovy's default for decimal literals
println ""
println "--- Big Number Types ---"
def bigDec = 1.1
println "1.1 is ${bigDec.class.simpleName}"
def bigInt = 1000000000000000000
println "Large int is ${bigInt.class.simpleName}"

// Explicit BigDecimal arithmetic (avoids floating-point issues)
def price = 19.99
def tax = 0.08
def total = price + (price * tax)
println "Price: ${price}, Tax: ${tax}"
println "Total: ${total} (${total.class.simpleName})"

// Null safety
println ""
println "--- Null Handling ---"
def nullable = null
println "null value: ${nullable}"
println "Safe navigation: ${nullable?.toString()}"
println "Elvis operator: ${nullable ?: 'default value'}"

// Constants with final
println ""
println "--- Constants ---"
final MAX_SIZE = 100
final String APP_NAME = "GroovyApp"
println "MAX_SIZE: ${MAX_SIZE}"
println "APP_NAME: ${APP_NAME}"
