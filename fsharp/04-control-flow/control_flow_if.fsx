let number = 7

// if/elif/else used for side effects (printing)
if number > 0 then
    printfn "%d is positive" number
elif number < 0 then
    printfn "%d is negative" number
else
    printfn "%d is zero" number

// Because if is an expression, it can return a value directly
let sign = if number > 0 then "positive" else "negative"
printfn "The sign is %s" sign

// Both branches must have the same type
let absValue = if number < 0 then -number else number
printfn "Absolute value of %d is %d" number absValue
