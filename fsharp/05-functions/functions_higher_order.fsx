// A lambda (anonymous function) bound to a name
let double = fun x -> x * 2

// Higher-order function: it takes a function 'f' as a parameter
let applyTwice f x = f (f x)

// Currying: supplying one argument returns a new function
let add a b = a + b
let add10 = add 10          // partial application -> int -> int

// A closure captures a variable from its surrounding scope
let makeCounter () =
    let mutable count = 0
    fun () ->
        count <- count + 1
        count

// The pipe operator |> feeds a value into the next function
let numbers = [1; 2; 3; 4; 5]
let sumOfSquares =
    numbers
    |> List.map (fun x -> x * x)
    |> List.sum

// Function composition with >> builds a new function from two others
let addThenDouble = add10 >> double

printfn "applyTwice double 3 = %d" (applyTwice double 3)
printfn "add10 5 = %d" (add10 5)
printfn "sumOfSquares = %d" sumOfSquares
printfn "addThenDouble 5 = %d" (addThenDouble 5)

let counter = makeCounter ()
printfn "counter: %d %d %d" (counter ()) (counter ()) (counter ())
