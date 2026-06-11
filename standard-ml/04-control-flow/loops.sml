(* A while loop driven by mutable references *)
val i = ref 1
val sum = ref 0

val () =
  while !i <= 10 do (
    sum := !sum + !i;   (* := updates a ref *)
    i := !i + 1         (* ! reads a ref *)
  )

val () = print ("Sum 1..10 = " ^ Int.toString (!sum) ^ "\n")

(* Functional iteration over a list - no explicit loop needed *)
val () = List.app (fn x => print (Int.toString x ^ " ")) [10, 20, 30]
val () = print "\n"
