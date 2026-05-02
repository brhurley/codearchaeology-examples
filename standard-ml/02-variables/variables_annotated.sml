(* Explicit type annotations *)
val count  : int    = 100
val ratio  : real   = 0.75
val label  : string = "elapsed"
val active : bool   = false

(* Type alias: give a name to a type *)
type milliseconds = int
type label_text   = string

val duration : milliseconds = 5000
val title    : label_text   = "load time"

(* Shadowing: a new binding with the same name *)
val count = count + 1        (* new binding; old count is still 100 *)

val () = print ("count (original shadowed): " ^ Int.toString count ^ "\n")
val () = print ("ratio:    " ^ Real.toString ratio ^ "\n")
val () = print ("duration: " ^ Int.toString duration ^ " ms\n")
val () = print ("title:    " ^ title ^ "\n")
