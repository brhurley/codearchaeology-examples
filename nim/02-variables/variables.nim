# === var: mutable variables ===
var count: int = 0
count = 10
var name = "Nim"  # Type inferred as string
name = "Nim Language"

echo "count = ", count
echo "name = ", name

# === let: immutable bindings (set once at runtime) ===
let language = "Nim"
let version: float = 2.0
# language = "Python"  # Compile error: cannot reassign a 'let' variable

echo "language = ", language
echo "version = ", version

# === const: compile-time constants ===
const Pi = 3.14159265
const MaxSize = 1024
const Greeting = "Hello from Nim"

echo "Pi = ", Pi
echo "MaxSize = ", MaxSize
echo "Greeting = ", Greeting

# === Basic types ===
var wholeNumber: int = 42
var decimal: float = 3.14
var flag: bool = true
var letter: char = 'A'
var text: string = "Hello"

echo "wholeNumber = ", wholeNumber
echo "decimal = ", decimal
echo "flag = ", flag
echo "letter = ", letter
echo "text = ", text

# === Integer types with specific sizes ===
var small: int8 = 127
var medium: int16 = 32_000
var large: int64 = 9_000_000_000
var positive: uint = 42

echo "small (int8) = ", small
echo "medium (int16) = ", medium
echo "large (int64) = ", large
echo "positive (uint) = ", positive

# === Float types ===
var single: float32 = 1.5
var double: float64 = 1.123456789012345

echo "single (float32) = ", single
echo "double (float64) = ", double
