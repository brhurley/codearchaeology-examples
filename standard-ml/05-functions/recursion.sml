(* One clause per case, separated by | *)
fun factorial 0 = 1
  | factorial n = n * factorial (n - 1)

(* Pattern match on list structure: empty vs head::tail *)
fun sumList [] = 0
  | sumList (x::xs) = x + sumList xs

(* Tail recursion with an accumulator avoids growing the stack *)
fun factTail (0, acc) = acc
  | factTail (n, acc) = factTail (n - 1, n * acc)

val () = print ("factorial 5 = " ^ Int.toString (factorial 5) ^ "\n")
val () = print ("sumList [1,2,3,4] = " ^ Int.toString (sumList [1,2,3,4]) ^ "\n")
val () = print ("factTail (6, 1) = " ^ Int.toString (factTail (6, 1)) ^ "\n")
