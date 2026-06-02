let describe n =
    match n with
    | 0 -> "zero"
    | 1 -> "one"
    | n when n < 0 -> "negative"
    | n when n % 2 = 0 -> "even"
    | _ -> "odd"

printfn "0 is %s" (describe 0)
printfn "1 is %s" (describe 1)
printfn "-5 is %s" (describe -5)
printfn "4 is %s" (describe 4)
printfn "7 is %s" (describe 7)
