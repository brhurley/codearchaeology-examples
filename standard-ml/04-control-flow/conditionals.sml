(* if/then/else is an expression that evaluates to a value *)
fun classify n =
  if n > 0 then "positive"
  else if n < 0 then "negative"
  else "zero"

val () = print (classify 5 ^ "\n")
val () = print (classify ~3 ^ "\n")   (* ~ is SML's negation, not - *)
val () = print (classify 0 ^ "\n")

(* Because if is an expression, it can be assigned directly *)
val larger = if 10 > 7 then 10 else 7
val () = print ("larger = " ^ Int.toString larger ^ "\n")

(* andalso / orelse are short-circuit boolean operators *)
fun inRange x = x >= 1 andalso x <= 100
val () = print ("50 in range? " ^ Bool.toString (inRange 50) ^ "\n")
val () = print ("200 in range? " ^ Bool.toString (inRange 200) ^ "\n")
