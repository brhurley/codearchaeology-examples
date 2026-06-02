// Classic recursion: factorial
let rec factorial n =
    if n <= 1 then 1
    else n * factorial (n - 1)

printfn "5! = %d" (factorial 5)

// Tail-recursive sum using an accumulator (efficient, no stack growth)
let rec sumTo acc n =
    if n = 0 then acc
    else sumTo (acc + n) (n - 1)

printfn "Sum 1..10 = %d" (sumTo 0 10)

// Recursion + pattern matching on a list
let rec length lst =
    match lst with
    | [] -> 0
    | _ :: rest -> 1 + length rest

printfn "Length of [1;2;3;4] = %d" (length [1; 2; 3; 4])
