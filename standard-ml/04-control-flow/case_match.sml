(* case matches a value against patterns, top to bottom *)
fun describe n =
  case n of
    0 => "zero"
  | 1 => "one"
  | 2 => "two"
  | _ => "many"      (* _ is the catch-all wildcard *)

val () = print (describe 0 ^ "\n")
val () = print (describe 2 ^ "\n")
val () = print (describe 99 ^ "\n")

(* Pattern matching shines on custom datatypes *)
datatype day = Mon | Tue | Wed | Thu | Fri | Sat | Sun

fun isWeekend d =
  case d of
    Sat => true
  | Sun => true
  | _   => false

val () = print ("Sat weekend? " ^ Bool.toString (isWeekend Sat) ^ "\n")
val () = print ("Mon weekend? " ^ Bool.toString (isWeekend Mon) ^ "\n")
