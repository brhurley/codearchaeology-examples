// --- Immutability ---
let x = 10
// x <- 20  // This would cause a compiler error!

// Shadowing: you can rebind a name with a new let
let x = x + 5
let x = x * 2
printfn "--- Immutability and Shadowing ---"
printfn "x after shadowing: %d" x

// --- Mutable Variables ---
// Use 'mutable' when you truly need to change a value
let mutable counter = 0
printfn ""
printfn "--- Mutable Variables ---"
printfn "Counter start: %d" counter
counter <- counter + 1
counter <- counter + 1
counter <- counter + 1
printfn "Counter after 3 increments: %d" counter

// --- Option Type (replacing null) ---
printfn ""
printfn "--- Option Type ---"

let findUser (id: int) : string option =
    if id = 1 then Some "Alice"
    elif id = 2 then Some "Bob"
    else None

let showUser id =
    match findUser id with
    | Some name -> printfn "User %d: %s" id name
    | None -> printfn "User %d: not found" id

showUser 1
showUser 2
showUser 99

// --- Tuples ---
printfn ""
printfn "--- Tuples ---"
let point = (3, 4)
let person = ("Grace Hopper", 1906)

let (xCoord, yCoord) = point
let (personName, birthYear) = person

printfn "Point: (%d, %d)" xCoord yCoord
printfn "Person: %s, born %d" personName birthYear

// --- Constants ---
printfn ""
printfn "--- Literal Constants ---"
[<Literal>]
let MaxRetries = 5

[<Literal>]
let AppName = "CodeArchaeology"

printfn "App: %s (max retries: %d)" AppName MaxRetries
