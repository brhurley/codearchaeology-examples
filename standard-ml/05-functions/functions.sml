(* One parameter; the compiler infers int -> int *)
fun square x = x * x

(* Two parameters; the compiler infers int -> int -> int *)
fun add x y = x + y

(* Explicit type annotations are allowed but rarely needed *)
fun greet (name : string) : string = "Hello, " ^ name ^ "!"

(* A function whose only purpose is a side effect returns unit *)
fun announce name = print (greet name ^ "\n")

val () = print ("square 5 = " ^ Int.toString (square 5) ^ "\n")
val () = print ("add 3 4 = " ^ Int.toString (add 3 4) ^ "\n")
val () = announce "Standard ML"
