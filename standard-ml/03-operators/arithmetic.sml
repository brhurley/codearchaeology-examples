(* Integer arithmetic *)
val sum  = 7 + 3      (* addition       *)
val diff = 7 - 3      (* subtraction    *)
val prod = 7 * 3      (* multiplication *)
val quot = 7 div 3    (* integer division: 2 *)
val rem  = 7 mod 3    (* modulo:          1 *)
val neg  = ~7         (* unary minus uses ~, not - *)

val () = print ("7 + 3   = " ^ Int.toString sum  ^ "\n")
val () = print ("7 - 3   = " ^ Int.toString diff ^ "\n")
val () = print ("7 * 3   = " ^ Int.toString prod ^ "\n")
val () = print ("7 div 3 = " ^ Int.toString quot ^ "\n")
val () = print ("7 mod 3 = " ^ Int.toString rem  ^ "\n")
val () = print ("~7      = " ^ Int.toString neg  ^ "\n")

(* Real arithmetic uses / for division; div and mod do NOT apply *)
val rdiv = 10.0 / 4.0
val () = print ("10.0 / 4.0 = " ^ Real.toString rdiv ^ "\n")
