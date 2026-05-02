(* The option type: SOME value or NONE *)

val found   : int option = SOME 42
val missing : int option = NONE

(* Safely extract the value with pattern matching *)
fun describeInt opt =
  case opt of
    NONE   => "no value"
  | SOME v => "value is " ^ Int.toString v

val () = print (describeInt found   ^ "\n")
val () = print (describeInt missing ^ "\n")

(* Option.getOpt provides a default value *)
val safeValue = Option.getOpt (found,   0)   (* 42 *)
val fallback  = Option.getOpt (missing, 0)   (* 0  *)

val () = print ("Safe value: " ^ Int.toString safeValue ^ "\n")
val () = print ("Fallback:   " ^ Int.toString fallback  ^ "\n")

(* Option.map applies a function only if SOME *)
val doubled = Option.map (fn x => x * 2) found    (* SOME 84 *)
val nothing = Option.map (fn x => x * 2) missing  (* NONE    *)

fun showOpt opt =
  case opt of
    NONE   => "NONE"
  | SOME v => "SOME " ^ Int.toString v

val () = print ("Doubled found:   " ^ showOpt doubled ^ "\n")
val () = print ("Doubled missing: " ^ showOpt nothing ^ "\n")
