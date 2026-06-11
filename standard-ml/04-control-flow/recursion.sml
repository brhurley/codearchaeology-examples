(* Two clauses: a base case and a recursive case *)
fun countdown 0 = print "Liftoff!\n"
  | countdown n = (
      print (Int.toString n ^ "... ");
      countdown (n - 1)
    )

val () = countdown 5

(* Recurse over a list's structure: [] vs head::tail *)
fun sumList [] = 0
  | sumList (x::xs) = x + sumList xs

val () = print ("Sum = " ^ Int.toString (sumList [1, 2, 3, 4, 5]) ^ "\n")

(* Tail recursion with an accumulator - the idiomatic "loop" *)
fun factorial n =
  let
    fun loop (0, acc) = acc
      | loop (k, acc) = loop (k - 1, k * acc)
  in
    loop (n, 1)
  end

val () = print ("5! = " ^ Int.toString (factorial 5) ^ "\n")
