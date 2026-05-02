(* Primitive type bindings in Standard ML *)

val age       = 42
val pi        = 3.14159
val name      = "Standard ML"
val isTypeSafe = true
val initial   = #"S"

val () = print ("Name:      " ^ name ^ "\n")
val () = print ("Age:       " ^ Int.toString age ^ "\n")
val () = print ("Pi:        " ^ Real.toString pi ^ "\n")
val () = print ("Type safe: " ^ Bool.toString isTypeSafe ^ "\n")
val () = print ("Initial:   " ^ String.str initial ^ "\n")
