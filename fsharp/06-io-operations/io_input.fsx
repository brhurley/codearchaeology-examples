open System

printf "What is your name? "
let name = Console.ReadLine()

printf "What year is it? "
let yearText = Console.ReadLine()

// Int32.TryParse returns a (bool, int) tuple you can pattern match on —
// idiomatic F# for parsing without exceptions
match Int32.TryParse(yearText) with
| true, year -> printfn "Hello, %s! Next year will be %d." name (year + 1)
| false, _   -> printfn "Hello, %s! I couldn't parse the year." name
