import std/strutils

stdout.write("What is your name? ")
let name = readLine(stdin)

stdout.write("What is your favorite number? ")
let numText = readLine(stdin)
let num = parseInt(numText)

echo "Hello, ", name, "!"
echo "Your number doubled is ", num * 2
