(* Writing and reading files with TextIO *)

(* Write a file: openOut truncates or creates *)
val out = TextIO.openOut "languages.txt"
val () = TextIO.output (out, "Standard ML\n")
val () = TextIO.output (out, "OCaml\n")
val () = TextIO.output (out, "Haskell\n")
val () = TextIO.closeOut out

(* Read the whole file at once *)
val ins = TextIO.openIn "languages.txt"
val contents = TextIO.inputAll ins
val () = TextIO.closeIn ins
val () = print ("--- File contents ---\n" ^ contents)

(* Read line by line, numbering each line *)
fun numberLines (strm, n) =
  case TextIO.inputLine strm of
      NONE => ()
    | SOME line =>
        ( print (Int.toString n ^ ": " ^ line)
        ; numberLines (strm, n + 1) )

val ins2 = TextIO.openIn "languages.txt"
val () = print "--- Numbered ---\n"
val () = numberLines (ins2, 1)
val () = TextIO.closeIn ins2

(* Opening a missing file raises IO.Io *)
val () =
  (let val f = TextIO.openIn "missing.txt"
   in TextIO.closeIn f
   end)
  handle IO.Io {name, ...} =>
    print ("Could not open: " ^ name ^ "\n")
