import std/strformat

let name = "Nim"
let version = 2.2
let count = 7
let pi = 3.14159

# Interpolate variables directly into the string
echo fmt"Language: {name}, version {version}"

# Left-align a label to width 12, right-align a number to width 4
let label = "Widgets"
echo fmt"{label:<12}| {count:>4}"

# Floating point with two decimal places
echo fmt"Pi to 2 dp: {pi:.2f}"

# The same integer in hexadecimal and binary
echo fmt"{count} in hex = {count:x}, in binary = {count:b}"
