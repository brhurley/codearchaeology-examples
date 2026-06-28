(* Takes a function f and applies it twice *)
fun applyTwice f x = f (f x)

(* An anonymous function (lambda) bound to a name *)
val increment = fn x => x + 1

(* Pass a named function to map *)
fun double x = x * 2
val doubled = map double [1, 2, 3, 4]

(* Pass an inline anonymous function to filter *)
val evens = List.filter (fn x => x mod 2 = 0) [1, 2, 3, 4, 5, 6]

(* foldl collapses a list into a single value *)
val total = foldl (fn (x, acc) => x + acc) 0 [1, 2, 3, 4, 5]

fun showList xs = "[" ^ String.concatWith ", " (map Int.toString xs) ^ "]"

val () = print ("applyTwice increment 5 = " ^ Int.toString (applyTwice increment 5) ^ "\n")
val () = print ("doubled = " ^ showList doubled ^ "\n")
val () = print ("evens = " ^ showList evens ^ "\n")
val () = print ("total = " ^ Int.toString total ^ "\n")
