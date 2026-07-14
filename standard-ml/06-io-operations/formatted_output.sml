(* Formatted output in Standard ML *)

val year = 1983
val pi = 3.14159

(* print takes a string, so convert other types first *)
val () = print ("Language: Standard ML\n")
val () = print ("First appeared: " ^ Int.toString year ^ "\n")

(* Reals: Real.toString for defaults, Real.fmt for precision control *)
val () = print ("Pi (default): " ^ Real.toString pi ^ "\n")
val () = print ("Pi (2 places): " ^ Real.fmt (StringCvt.FIX (SOME 2)) pi ^ "\n")

(* Column alignment with StringCvt.padRight and padLeft *)
fun row (label, value) =
  print (StringCvt.padRight #" " 12 label ^ " | " ^
         StringCvt.padLeft #" " 6 value ^ "\n")

val () = row ("item", "count")
val () = row ("bindings", Int.toString 4)
val () = row ("years", Int.toString (2026 - year))
