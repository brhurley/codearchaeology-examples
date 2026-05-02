(* Tuples: fixed-size, ordered, heterogeneous *)
val point   = (3, 4)            (* int * int *)
val triple  = (1, "hello", true) (* int * string * bool *)

(* Destructure a tuple with pattern binding *)
val (x, y) = point

(* Records: named fields *)
val person = {name = "Alice", age = 30, active = true}

(* Access record fields with # selector *)
val personName = #name person
val personAge  = #age  person

(* Lists: variable-length, homogeneous *)
val numbers = [1, 2, 3, 4, 5]      (* int list *)
val words   = ["sml", "is", "fun"]  (* string list *)
val empty   = []                    (* 'a list - polymorphic *)

(* List operations from the Basis Library *)
val count   = List.length numbers
val doubled = List.map (fn n => n * 2) numbers
val total   = List.foldl (fn (n, acc) => n + acc) 0 numbers

val () = print ("Point: (" ^ Int.toString x ^ ", " ^ Int.toString y ^ ")\n")
val () = print ("Person: " ^ personName ^ ", age " ^ Int.toString personAge ^ "\n")
val () = print ("List length: " ^ Int.toString count ^ "\n")
val () = print ("Sum: " ^ Int.toString total ^ "\n")
val () = print "Doubled: "
val () = List.app (fn n => print (Int.toString n ^ " ")) doubled
val () = print "\n"
