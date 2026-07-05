open System.IO

// Wrap a read in try/with and match on the specific failure
let safeRead path =
    try
        let text = File.ReadAllText(path)
        printfn "Read %d characters from %s" text.Length path
    with
    | :? FileNotFoundException ->
        printfn "File not found: %s" path
    | :? IOException as ex ->
        printfn "I/O error reading %s: %s" path ex.Message

// Create a file that exists, then read both it and a missing one
File.WriteAllText("present.txt", "hello")
safeRead "present.txt"
safeRead "missing.txt"

// Or guard with File.Exists and stay in a pure pipeline
let describe path =
    if File.Exists(path) then sprintf "%s exists" path
    else sprintf "%s is missing" path

[ "present.txt"; "missing.txt" ]
|> List.map describe
|> List.iter (printfn "%s")
