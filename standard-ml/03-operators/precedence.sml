(* Precedence: * binds tighter than + *)
val a = 2 + 3 * 4      (* 14, not 20 *)
val b = (2 + 3) * 4    (* 20 *)
val () = print ("2 + 3 * 4   = " ^ Int.toString a ^ "\n")
val () = print ("(2 + 3) * 4 = " ^ Int.toString b ^ "\n")

(* Function composition with o : (g o f) x = g (f x) *)
fun double x = x * 2
fun inc x = x + 1
val doubleThenFromInc = double o inc   (* applies inc first, then double *)
val () = print ("double (inc 5) = " ^ Int.toString (doubleThenFromInc 5) ^ "\n")
