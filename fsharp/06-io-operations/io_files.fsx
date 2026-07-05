open System.IO

// Write a string to a file (creates it, or overwrites if it exists)
let path = "notes.txt"
File.WriteAllText(path, "First line\nSecond line\n")

// Append without overwriting what's already there
File.AppendAllText(path, "Appended line\n")

// Write a collection of lines at once
let langs = [ "F#"; "OCaml"; "Haskell" ]
File.WriteAllLines("languages.txt", langs)

// Read the whole file back as a single string
let contents = File.ReadAllText(path)
printfn "--- notes.txt ---"
printf "%s" contents

// Read a file as an array of lines, then process it with a pipeline
let lines = File.ReadAllLines("languages.txt")
printfn "--- languages.txt (%d lines) ---" lines.Length
lines |> Array.iteri (fun i line -> printfn "%d: %s" i line)
