(* Local value bindings, visible only between in and end *)
fun sumOfSquares a b =
  let
    val aSquared = a * a
    val bSquared = b * b
  in
    aSquared + bSquared
  end

(* A helper function scoped inside describe *)
fun describe n =
  let
    fun parity x = if x mod 2 = 0 then "even" else "odd"
  in
    Int.toString n ^ " is " ^ parity n
  end

(* A top-level binding visible to every function below it *)
val taxRate = 8

fun addTax price = price + (price * taxRate) div 100

val () = print ("sumOfSquares 3 4 = " ^ Int.toString (sumOfSquares 3 4) ^ "\n")
val () = print (describe 7 ^ "\n")
val () = print ("addTax 100 = " ^ Int.toString (addTax 100) ^ "\n")
