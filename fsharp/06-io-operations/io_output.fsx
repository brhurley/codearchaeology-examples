// Formatted console output in F#

// printfn writes a line; format specifiers are checked at compile time
printfn "Name: %s, Age: %d" "Ada" 36
printfn "Pi is approximately %.3f" 3.14159
printfn "Enabled: %b" true

// printf omits the trailing newline
printf "No newline here... "
printfn "continued on the same line"

// sprintf returns a formatted string instead of printing it
let summary = sprintf "%s scored %d%%" "Grace" 95
printfn "%s" summary

// String interpolation (F# 5+) reads naturally for simple cases
let language = "F#"
let year = 2005
printfn $"{language} first appeared in {year}"

// %A pretty-prints any value, including lists and tuples
printfn "Numbers: %A" [ 1; 2; 3 ]
