(* Reading lines from standard input *)

(* inputLine keeps the trailing newline; strip it if present *)
fun chomp line =
  if String.isSuffix "\n" line
  then String.substring (line, 0, String.size line - 1)
  else line

(* Recursive read loop: NONE signals end of input *)
fun processLines n =
  case TextIO.inputLine TextIO.stdIn of
      NONE => print ("Done. Read " ^ Int.toString (n - 1) ^ " line(s).\n")
    | SOME line =>
        ( print ("Line " ^ Int.toString n ^ ": " ^
                 String.map Char.toUpper (chomp line) ^ "\n")
        ; processLines (n + 1) )

val () = processLines 1
