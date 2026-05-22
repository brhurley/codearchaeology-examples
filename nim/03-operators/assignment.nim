var counter = 0
counter += 5
counter -= 2
counter *= 3
echo "counter = ", counter   # (0+5-2)*3 = 9

# String concatenation with &
let greeting = "Hello" & ", " & "Nim"
echo greeting

# In-place string append
var message = "Count: "
message &= $counter          # $ converts int to string
echo message
