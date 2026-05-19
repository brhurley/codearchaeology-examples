// Arithmetic operators
let sum = 2 + 3
let diff = 10 - 4
let product = 6 * 7
let intDiv = 15 / 4        // integer division: 3
let remainder = 17 % 5     // modulus: 2
let power = 2.0 ** 8.0     // power requires floats

printfn "Arithmetic:"
printfn "  2 + 3        = %d" sum
printfn "  10 - 4       = %d" diff
printfn "  6 * 7        = %d" product
printfn "  15 / 4       = %d  (integer division truncates)" intDiv
printfn "  17 %% 5       = %d" remainder
printfn "  2.0 ** 8.0   = %.1f" power

// Explicit numeric conversion (no implicit coercion)
let mixed = float 15 / 4.0
printfn "  float 15 / 4.0 = %.2f" mixed

// Comparison operators (= for equality, <> for inequality)
printfn ""
printfn "Comparison:"
printfn "  3 = 3        : %b" (3 = 3)
printfn "  3 <> 4       : %b" (3 <> 4)
printfn "  5 < 10       : %b" (5 < 10)
printfn "  \"abc\" < \"abd\" : %b" ("abc" < "abd")

// Logical operators (short-circuit)
let a, b = true, false
printfn ""
printfn "Logical:"
printfn "  true && false : %b" (a && b)
printfn "  true || false : %b" (a || b)
printfn "  not true      : %b" (not a)

// String concatenation uses + (not ++ or .)
let greeting = "Hello, " + "F#" + "!"
printfn ""
printfn "String concat: %s" greeting

// Bitwise operators on integers
printfn ""
printfn "Bitwise:"
printfn "  6 &&& 3      = %d  (AND)" (6 &&& 3)
printfn "  6 ||| 3      = %d  (OR)"  (6 ||| 3)
printfn "  6 ^^^ 3      = %d  (XOR)" (6 ^^^ 3)
printfn "  1 <<< 4      = %d  (left shift)"  (1 <<< 4)

// The pipe operator: data flows left-to-right
let pipedSum =
    [1; 2; 3; 4; 5]
    |> List.map (fun x -> x * x)
    |> List.filter (fun x -> x > 5)
    |> List.sum

printfn ""
printfn "Pipe result (sum of squares > 5): %d" pipedSum

// Function composition: build a new function from two others
let addOne x = x + 1
let double x = x * 2
let addThenDouble = addOne >> double   // fun x -> double (addOne x)
printfn "addThenDouble 3 = %d" (addThenDouble 3)

// Operators are just functions — you can pass them around
let addFn = (+)                         // the + function as a value
printfn "(+) 4 5 = %d" (addFn 4 5)
let totals = List.reduce (+) [10; 20; 30; 40]
printfn "List.reduce (+) [10;20;30;40] = %d" totals

// Define your own infix operator
let (.+.) x y = (x * 2) + (y * 2)       // custom operator: doubled-sum
printfn "5 .+. 3 (custom) = %d" (5 .+. 3)

// Operator precedence: standard math rules apply
let precedence = 2 + 3 * 4              // 14, not 20
printfn ""
printfn "2 + 3 * 4 = %d" precedence
printfn "(2 + 3) * 4 = %d" ((2 + 3) * 4)
