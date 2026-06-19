// Basic function: type inference figures out 'x' is an int
let square x = x * x

// Multiple parameters are separated by spaces
let add a b = a + b

// Explicit type annotations (usually optional thanks to inference)
let greet (name: string) : string =
    sprintf "Hello, %s!" name

// A multi-line function with a local binding in its body
let circleArea radius =
    let pi = 3.14159
    pi * radius * radius

// A function returning unit performs a side effect only
let printResult label value =
    printfn "%s = %d" label value

// Functions are called by writing the name followed by arguments
printResult "square 5" (square 5)
printResult "add 3 4" (add 3 4)
printfn "%s" (greet "F#")
printfn "circleArea 2.0 = %f" (circleArea 2.0)
