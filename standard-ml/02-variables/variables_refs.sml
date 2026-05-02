(* Reference cells for mutable state *)

(* Create a ref with ref(...) or ref value *)
val counter = ref 0        (* int ref *)
val message = ref "hello"  (* string ref *)

(* Read a ref with the ! (dereference) operator *)
val () = print ("Initial counter: " ^ Int.toString (!counter) ^ "\n")
val () = print ("Initial message: " ^ !message ^ "\n")

(* Modify a ref with the := operator *)
val () = counter := !counter + 1
val () = counter := !counter + 1
val () = counter := !counter + 1
val () = message := "world"

val () = print ("Counter after 3 increments: " ^ Int.toString (!counter) ^ "\n")
val () = print ("Message after update: " ^ !message ^ "\n")

(* ref cells compose naturally *)
val flag = ref false
val () = flag := not (!flag)   (* flip the boolean *)
val () = print ("Flag flipped: " ^ Bool.toString (!flag) ^ "\n")
