// 'rec' is required for a function to refer to itself
let rec factorial n =
    if n <= 1 then 1
    else n * factorial (n - 1)

// Recursion pairs naturally with pattern matching
let rec fib n =
    match n with
    | 0 -> 0
    | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)

// Tail-recursive sum using an accumulator and a nested helper
let sumTo n =
    let rec loop acc i =
        if i > n then acc
        else loop (acc + i) (i + 1)
    loop 0 1

printfn "factorial 5 = %d" (factorial 5)
printfn "fib 10 = %d" (fib 10)
printfn "sumTo 100 = %d" (sumTo 100)
