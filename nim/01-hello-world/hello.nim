# A typed greeting procedure
proc greet(name: string): string =
  result = "Hello, " & name & "!"

# Call the procedure and print the result
let message = greet("World")
echo message
