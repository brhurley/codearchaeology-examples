# === Explicit type conversions ===
let intVal = 42
let floatVal = float(intVal)
let backToInt = int(3.99)  # Truncates to 3

echo "int to float: ", intVal, " -> ", floatVal
echo "float to int (truncates): 3.99 -> ", backToInt

# === String conversions ===
let number = 256
let numStr = $number           # $ converts any type to string
let piStr = $3.14159
let boolStr = $true

echo "int to string: ", numStr
echo "float to string: ", piStr
echo "bool to string: ", boolStr

# Parsing strings to numbers
import std/strutils

let parsed = parseInt("100")
let parsedFloat = parseFloat("2.718")
echo "string to int: ", parsed
echo "string to float: ", parsedFloat

# === Distinct types for safety ===
type
  Meters = distinct float
  Kilometers = distinct float

proc `$`(m: Meters): string = $float(m) & "m"
proc `$`(k: Kilometers): string = $float(k) & "km"

let distance: Meters = 500.0.Meters
let road: Kilometers = 3.5.Kilometers

# let mistake: Meters = road  # Compile error! Cannot mix distinct types
echo "distance = ", distance
echo "road = ", road

# === Enumerations ===
type
  Direction = enum
    North, South, East, West

  Color = enum
    Red = "red"
    Green = "green"
    Blue = "blue"

var heading = North
echo "heading = ", heading

for c in Color:
  echo "color: ", c

# === Tuples and sequences ===
let point: tuple[x: int, y: int] = (x: 10, y: 20)
echo "point = (", point.x, ", ", point.y, ")"

var numbers: seq[int] = @[1, 2, 3, 4, 5]
numbers.add(6)
echo "numbers = ", numbers
echo "length = ", numbers.len

# === Arrays (fixed-size) ===
var grid: array[3, string] = ["alpha", "beta", "gamma"]
echo "grid = ", grid
echo "grid[0] = ", grid[0]
